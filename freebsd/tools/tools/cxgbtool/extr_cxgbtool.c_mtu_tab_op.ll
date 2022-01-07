; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_mtu_tab_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_mtu_tab_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_mtus = type { i32, i32* }

@CHELSIO_GETMTUTAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"get MTU table\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NMTUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"bad parameter \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"MTUs must be in ascending order\00", align 1
@CHELSIO_SETMTUTAB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"set MTU table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @mtu_tab_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtu_tab_op(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ch_mtus, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* @CHELSIO_GETMTUTAB, align 4
  %20 = call i64 @doit(i8* %18, i32 %19, %struct.ch_mtus* %10)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %25

41:                                               ; preds = %25
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %121

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @NMTUS, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %119

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %108, %49
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %54
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %60, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strtoul(i8* %66, i8** %12, i32 0)
  store i64 %67, i64* %13, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i64, i64* %13, align 8
  %74 = icmp ugt i64 %73, 9600
  br i1 %74, label %75, label %84

75:                                               ; preds = %72, %59
  %76 = load i8**, i8*** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  store i32 -1, i32* %5, align 4
  br label %122

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sub i32 %91, 1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %88, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %87, %84
  %101 = load i64, i64* %13, align 8
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.ch_mtus, %struct.ch_mtus* %10, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %54

111:                                              ; preds = %54
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* @CHELSIO_SETMTUTAB, align 4
  %114 = call i64 @doit(i8* %112, i32 %113, %struct.ch_mtus* %10)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  br label %120

119:                                              ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %122

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %41
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %119, %75
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @doit(i8*, i32, %struct.ch_mtus*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
