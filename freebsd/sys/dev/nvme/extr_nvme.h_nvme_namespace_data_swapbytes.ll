; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_namespace_data_swapbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_namespace_data_swapbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace_data = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_namespace_data*)* @nvme_namespace_data_swapbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_namespace_data_swapbytes(%struct.nvme_namespace_data* %0) #0 {
  %2 = alloca %struct.nvme_namespace_data*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_namespace_data* %0, %struct.nvme_namespace_data** %2, align 8
  %4 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %4, i32 0, i32 18
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @le64toh(i8* %6)
  %8 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %8, i32 0, i32 18
  store i8* %7, i8** %9, align 8
  %10 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %10, i32 0, i32 17
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @le64toh(i8* %12)
  %14 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %14, i32 0, i32 17
  store i8* %13, i8** %15, align 8
  %16 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %16, i32 0, i32 16
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @le64toh(i8* %18)
  %20 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %20, i32 0, i32 16
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %22, i32 0, i32 15
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @le16toh(i8* %24)
  %26 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %26, i32 0, i32 15
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %28, i32 0, i32 14
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @le16toh(i8* %30)
  %32 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %32, i32 0, i32 14
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %35 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %34, i32 0, i32 13
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @le16toh(i8* %36)
  %38 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %38, i32 0, i32 13
  store i8* %37, i8** %39, align 8
  %40 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %41 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %40, i32 0, i32 12
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @le16toh(i8* %42)
  %44 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %45 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %44, i32 0, i32 12
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %46, i32 0, i32 11
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @le16toh(i8* %48)
  %50 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %50, i32 0, i32 11
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %53 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %52, i32 0, i32 10
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @le16toh(i8* %54)
  %56 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %57 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %59 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %58, i32 0, i32 9
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @le16toh(i8* %60)
  %62 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %63 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %65 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %64, i32 0, i32 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @le16toh(i8* %66)
  %68 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %69 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %71 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %70, i32 0, i32 7
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @le16toh(i8* %72)
  %74 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %75 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %77 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %76, i32 0, i32 6
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @le16toh(i8* %78)
  %80 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %81 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %83 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @le16toh(i8* %84)
  %86 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %87 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %89 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @le16toh(i8* %90)
  %92 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %93 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %95 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @le32toh(i8* %96)
  %98 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %99 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %101 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @le16toh(i8* %102)
  %104 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %105 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %107 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @le16toh(i8* %108)
  %110 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %111 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %130, %1
  %113 = load i32, i32* %3, align 4
  %114 = icmp slt i32 %113, 16
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %117 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @le32toh(i8* %122)
  %124 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %125 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %123, i8** %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %112

133:                                              ; preds = %112
  ret void
}

declare dso_local i8* @le64toh(i8*) #1

declare dso_local i8* @le16toh(i8*) #1

declare dso_local i8* @le32toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
