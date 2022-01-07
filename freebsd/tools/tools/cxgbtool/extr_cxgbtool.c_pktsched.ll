; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_pktsched.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_pktsched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ch_pktsched_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"no scheduler specified\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tunnelq\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"unknown scheduler \22%s\22; must be one of \22port\22, \22tunnelq\22 or \22tx\22\00", align 1
@CHELSIO_SET_PKTSCHED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"pktsched\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*)* @pktsched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktsched(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ch_pktsched_params, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i8**, i8*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 4
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %147

33:                                               ; preds = %27
  %34 = load i8**, i8*** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @get_int_arg(i8* %39, i32* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %33
  %43 = load i8**, i8*** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @get_int_arg(i8* %48, i32* %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %42
  %52 = load i8**, i8*** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @get_int_arg(i8* %57, i32* %13)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %42, %33
  store i32 -1, i32* %5, align 4
  br label %147

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 0
  store i32 0, i32* %62, align 4
  br label %131

63:                                               ; preds = %19
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 4
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 -1, i32* %5, align 4
  br label %147

77:                                               ; preds = %71
  %78 = load i8**, i8*** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @get_int_arg(i8* %83, i32* %11)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %77
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @get_int_arg(i8* %92, i32* %13)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %86
  %96 = load i8**, i8*** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @get_int_arg(i8* %101, i32* %14)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95, %86, %77
  store i32 -1, i32* %5, align 4
  br label %147

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %130

107:                                              ; preds = %63
  %108 = load i8**, i8*** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = load i8**, i8*** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @tx_sched(i32 %116, i8** %117, i32 %119, i8* %120)
  store i32 %121, i32* %5, align 4
  br label %147

122:                                              ; preds = %107
  %123 = load i8**, i8*** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %105
  br label %131

131:                                              ; preds = %130, %61
  %132 = load i32, i32* %11, align 4
  %133 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 2
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %13, align 4
  %137 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 3
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %14, align 4
  %139 = getelementptr inbounds %struct.ch_pktsched_params, %struct.ch_pktsched_params* %10, i32 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @CHELSIO_SET_PKTSCHED, align 4
  %142 = call i64 @doit(i8* %140, i32 %141, %struct.ch_pktsched_params* %10)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %131
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %115, %104, %76, %60, %32
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_int_arg(i8*, i32*) #1

declare dso_local i32 @tx_sched(i32, i8**, i32, i8*) #1

declare dso_local i64 @doit(i8*, i32, %struct.ch_pktsched_params*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
