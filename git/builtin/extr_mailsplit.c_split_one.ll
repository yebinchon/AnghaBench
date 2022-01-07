; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_one.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mailsplit.c_split_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }

@buf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"corrupt mailbox\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot open output file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@keep_cr = common dso_local global i32 0, align 4
@mboxrd = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cannot write output\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cannot read mbox\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @split_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_one(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %13 = call i64 @is_from_line(i8* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %19, %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @O_WRONLY, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_EXCL, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open(i8* %27, i32 %32, i32 438)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %8, align 4
  %41 = call i32* @xfdopen(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %108, %39
  %43 = load i32, i32* @keep_cr, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 0), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %71

57:                                               ; preds = %48
  %58 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 0), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %60 = sub nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %68 = sub nsw i32 %67, 2
  %69 = call i32 @strbuf_setlen(%struct.TYPE_7__* @buf, i32 %68)
  %70 = call i32 @strbuf_addch(%struct.TYPE_7__* @buf, i8 signext 10)
  br label %71

71:                                               ; preds = %66, %57, %48, %45, %42
  %72 = load i64, i64* @mboxrd, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i64 @is_gtfrom(%struct.TYPE_7__* @buf)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @strbuf_remove(%struct.TYPE_7__* @buf, i32 0, i32 1)
  br label %79

79:                                               ; preds = %77, %74, %71
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 0), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @fwrite(i8* %80, i32 1, i32 %81, i32* %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %79
  %89 = load i32*, i32** %4, align 8
  %90 = call i64 @strbuf_getwholeline(%struct.TYPE_7__* @buf, i32* %89, i8 signext 10)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @feof(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %9, align 4
  br label %109

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @die_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %88
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 0), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @buf, i32 0, i32 1), align 8
  %105 = call i64 @is_from_line(i8* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %102, %99
  br label %42

109:                                              ; preds = %107, %96
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @fclose(i32* %110)
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i64 @is_from_line(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @die_errno(i8*, ...) #1

declare dso_local i32* @xfdopen(i32, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i64 @is_gtfrom(%struct.TYPE_7__*) #1

declare dso_local i32 @strbuf_remove(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i64 @strbuf_getwholeline(%struct.TYPE_7__*, i32*, i8 signext) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
