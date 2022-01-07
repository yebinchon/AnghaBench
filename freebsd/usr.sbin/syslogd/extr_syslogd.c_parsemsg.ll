; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_parsemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Invalid PRI from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid PRI header from %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid PRI %ld from %s: %s\0A\00", align 1
@LOG_FACMASK = common dso_local global i32 0, align 4
@LOG_PRIMASK = common dso_local global i32 0, align 4
@DEFUPRI = common dso_local global i32 0, align 4
@LOG_KERN = common dso_local global i32 0, align 4
@KeepKernFac = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @parsemsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parsemsg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 60
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @isdigit(i8 signext %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %2
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %141

23:                                               ; preds = %14
  store i64 2, i64* %7, align 8
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i64, i64* %7, align 8
  %26 = icmp ule i64 %25, 4
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 62
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %49

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @isdigit(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %141

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %24

49:                                               ; preds = %34, %24
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 62
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %141

59:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i64 @strtol(i8* %61, i8** %5, i32 10)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* @errno, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %68, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load i64, i64* %6, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @INT_MAX, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %78, %75, %65, %59
  %83 = load i64, i64* %6, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* @errno, align 8
  %86 = call i32 @strerror(i64 %85)
  %87 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %83, i8* %84, i32 %86)
  br label %141

88:                                               ; preds = %78
  %89 = load i64, i64* %6, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @LOG_FACMASK, align 4
  %93 = load i32, i32* @LOG_PRIMASK, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @DEFUPRI, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %88
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @LOG_FACMASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @LOG_KERN, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load i32, i32* @KeepKernFac, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @LOG_USER, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @LOG_PRI(i32 %111)
  %113 = call i32 @LOG_MAKEPRI(i32 %110, i32 %112)
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %109, %106, %100
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 %116
  store i8* %118, i8** %4, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 49
  br i1 %123, label %124, label %136

124:                                              ; preds = %114
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i8*, i8** %3, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = call i32 @parsemsg_rfc5424(i8* %131, i32 %132, i8* %134)
  br label %141

136:                                              ; preds = %124, %114
  %137 = load i8*, i8** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 @parsemsg_rfc3164(i8* %137, i32 %138, i8* %139)
  br label %141

141:                                              ; preds = %20, %42, %56, %82, %136, %130
  ret void
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @LOG_MAKEPRI(i32, i32) #1

declare dso_local i32 @LOG_PRI(i32) #1

declare dso_local i32 @parsemsg_rfc5424(i8*, i32, i8*) #1

declare dso_local i32 @parsemsg_rfc3164(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
