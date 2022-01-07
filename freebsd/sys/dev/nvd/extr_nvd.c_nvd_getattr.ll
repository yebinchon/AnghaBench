; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvd/extr_nvd.c_nvd_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nvd_disk = type { i32 }
%struct.nvme_namespace_data = type { i64*, i64* }

@.str = private unnamed_addr constant [12 x i8] c"GEOM::lunid\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @nvd_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd_getattr(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.nvd_disk*, align 8
  %5 = alloca %struct.nvme_namespace_data*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.nvd_disk*
  store %struct.nvd_disk* %12, %struct.nvd_disk** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %145, label %18

18:                                               ; preds = %1
  %19 = load %struct.nvd_disk*, %struct.nvd_disk** %4, align 8
  %20 = getelementptr inbounds %struct.nvd_disk, %struct.nvd_disk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.nvme_namespace_data* @nvme_ns_get_data(i32 %21)
  store %struct.nvme_namespace_data* %22, %struct.nvme_namespace_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %18
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %5, align 8
  %29 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %23

41:                                               ; preds = %36, %23
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 17
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EFAULT, align 4
  store i32 %52, i32* %2, align 4
  br label %146

53:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 8
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %5, align 8
  %67 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sprintf(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %54

77:                                               ; preds = %54
  %78 = load %struct.bio*, %struct.bio** %3, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bio*, %struct.bio** %3, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %146

83:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %86, 8
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %5, align 8
  %90 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %102

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %84

102:                                              ; preds = %97, %84
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp ult i64 %104, 8
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = load %struct.bio*, %struct.bio** %3, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %110, 17
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @EFAULT, align 4
  store i32 %113, i32* %2, align 4
  br label %146

114:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %135, %114
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ult i64 %117, 8
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = load %struct.bio*, %struct.bio** %3, align 8
  %121 = getelementptr inbounds %struct.bio, %struct.bio* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = mul nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %5, align 8
  %128 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @sprintf(i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %115

138:                                              ; preds = %115
  %139 = load %struct.bio*, %struct.bio** %3, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.bio*, %struct.bio** %3, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  store i32 0, i32* %2, align 4
  br label %146

144:                                              ; preds = %102
  br label %145

145:                                              ; preds = %144, %1
  store i32 -1, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %138, %112, %77, %51
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.nvme_namespace_data* @nvme_ns_get_data(i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
