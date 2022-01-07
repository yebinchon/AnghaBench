; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_print_mapping_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_print_mapping_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i64*, i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [84 x i8] c"Mapping array size: %d, baseTSN: %8.8x, cumAck: %8.8x, highestTSN: (%8.8x, %8.8x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Renegable mapping array (last %d entries are zero):\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%2.2x%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Non renegable mapping array (last %d entries are zero):\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_print_mapping_array(%struct.sctp_association* %0) #0 {
  %2 = alloca %struct.sctp_association*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %2, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %42

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add i32 %40, -1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %37, %24
  %43 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %45, %46
  %48 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %68, %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %55 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, 1
  %63 = urem i32 %62, 16
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 32, i32 10
  %67 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %60, i32 %66)
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %49

71:                                               ; preds = %49
  %72 = load i32, i32* %4, align 4
  %73 = urem i32 %72, 16
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %79 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %96, %77
  %82 = load i32, i32* %4, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %86 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sub i32 %88, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add i32 %97, -1
  store i32 %98, i32* %4, align 4
  br label %81

99:                                               ; preds = %94, %81
  %100 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %101 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %125, %99
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load %struct.sctp_association*, %struct.sctp_association** %2, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = add i32 %118, 1
  %120 = urem i32 %119, 16
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 32, i32 10
  %124 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %117, i32 %123)
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %3, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load i32, i32* %4, align 4
  %130 = urem i32 %129, 16
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 (i8*, ...) @SCTP_PRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  ret void
}

declare dso_local i32 @SCTP_PRINTF(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
