; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_mark_non_revokable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_mark_non_revokable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i8*, i8*, i32, i32, i32, i8* }

@sctp_do_drain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"gap:%x tsn:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, i8*)* @sctp_mark_non_revokable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_mark_non_revokable(%struct.sctp_association* %0, i8* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @sctp_do_drain, align 4
  %12 = call i64 @SCTP_BASE_SYSCTL(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %132

15:                                               ; preds = %2
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 1
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @SCTP_TSN_GT(i8* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %132

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SCTP_CALC_TSN_TO_GAP(i8* %26, i8* %27, i32 %30)
  %32 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @SCTP_IS_TSN_PRESENT(i32 %34, i8* %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @SCTP_IS_TSN_PRESENT(i32 %39, i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @SCTP_PRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %49)
  %51 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %52 = call i32 @sctp_print_mapping_array(%struct.sctp_association* %51)
  br label %53

53:                                               ; preds = %47, %44, %25
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @SCTP_SET_TSN_PRESENT(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @SCTP_UNSET_TSN_PRESENT(i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i8*, i8** %4, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @SCTP_TSN_GT(i8* %72, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** %4, align 8
  %80 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %81 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i8*, i8** %4, align 8
  %84 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %83, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr i8, i8* %89, i64 -1
  store i8* %90, i8** %6, align 8
  br label %91

91:                                               ; preds = %116, %88
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @SCTP_TSN_GE(i8* %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %102 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @SCTP_CALC_TSN_TO_GAP(i8* %99, i8* %100, i32 %103)
  %105 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %106 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @SCTP_IS_TSN_PRESENT(i32 %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  store i32 1, i32* %8, align 4
  br label %119

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %118, i8** %6, align 8
  br label %91

119:                                              ; preds = %111, %91
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  %123 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %124 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %122, %119
  br label %132

132:                                              ; preds = %14, %24, %131, %82
  ret void
}

declare dso_local i64 @SCTP_BASE_SYSCTL(i32) #1

declare dso_local i64 @SCTP_TSN_GT(i8*, i8*) #1

declare dso_local i32 @SCTP_CALC_TSN_TO_GAP(i8*, i8*, i32) #1

declare dso_local i32 @SCTP_IS_TSN_PRESENT(i32, i8*) #1

declare dso_local i32 @SCTP_PRINTF(i8*, i8*, i8*) #1

declare dso_local i32 @sctp_print_mapping_array(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_SET_TSN_PRESENT(i32, i8*) #1

declare dso_local i32 @SCTP_UNSET_TSN_PRESENT(i32, i8*) #1

declare dso_local i64 @SCTP_TSN_GE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
