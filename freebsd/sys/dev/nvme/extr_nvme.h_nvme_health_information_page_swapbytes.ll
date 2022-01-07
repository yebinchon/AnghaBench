; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_health_information_page_swapbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_health_information_page_swapbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_health_information_page = type { i8*, i8*, i8*, i8*, i8**, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_health_information_page*)* @nvme_health_information_page_swapbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_health_information_page_swapbytes(%struct.nvme_health_information_page* %0) #0 {
  %2 = alloca %struct.nvme_health_information_page*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_health_information_page* %0, %struct.nvme_health_information_page** %2, align 8
  %4 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %4, i32 0, i32 17
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @le16toh(i8* %6)
  %8 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %8, i32 0, i32 17
  store i8* %7, i8** %9, align 8
  %10 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %10, i32 0, i32 16
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @nvme_le128toh(i8* %13)
  %15 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @nvme_le128toh(i8* %18)
  %20 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %21 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %20, i32 0, i32 14
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @nvme_le128toh(i8* %23)
  %25 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %26 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %25, i32 0, i32 13
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @nvme_le128toh(i8* %28)
  %30 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %31 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @nvme_le128toh(i8* %33)
  %35 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @nvme_le128toh(i8* %38)
  %40 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %41 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @nvme_le128toh(i8* %43)
  %45 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %46 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @nvme_le128toh(i8* %48)
  %50 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %51 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @nvme_le128toh(i8* %53)
  %55 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %56 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @nvme_le128toh(i8* %58)
  %60 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %61 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %60, i32 0, i32 6
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @le32toh(i8* %62)
  %64 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %65 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %67 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = call i8* @le32toh(i8* %68)
  %70 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %71 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %90, %1
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %77 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @le16toh(i8* %82)
  %84 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %85 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %84, i32 0, i32 4
  %86 = load i8**, i8*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %83, i8** %89, align 8
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %72

93:                                               ; preds = %72
  %94 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %95 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @le32toh(i8* %96)
  %98 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %99 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %101 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @le32toh(i8* %102)
  %104 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %105 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %107 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @le32toh(i8* %108)
  %110 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %111 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %113 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @le32toh(i8* %114)
  %116 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %2, align 8
  %117 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  ret void
}

declare dso_local i8* @le16toh(i8*) #1

declare dso_local i32 @nvme_le128toh(i8*) #1

declare dso_local i8* @le32toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
