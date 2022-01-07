; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_dinode2_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/ffs/extr_ffs_bswap.c_ffs_dinode2_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs2_dinode = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ffs_dinode2_swap(%struct.ufs2_dinode* %0, %struct.ufs2_dinode* %1) #0 {
  %3 = alloca %struct.ufs2_dinode*, align 8
  %4 = alloca %struct.ufs2_dinode*, align 8
  store %struct.ufs2_dinode* %0, %struct.ufs2_dinode** %3, align 8
  store %struct.ufs2_dinode* %1, %struct.ufs2_dinode** %4, align 8
  %5 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %6 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %5, i32 0, i32 21
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @bswap16(i8* %7)
  %9 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %10 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %9, i32 0, i32 21
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %12 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %11, i32 0, i32 20
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @bswap16(i8* %13)
  %15 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %16 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %15, i32 0, i32 20
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %18 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %17, i32 0, i32 19
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @bswap32(i8* %19)
  %21 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %22 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %21, i32 0, i32 19
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %24 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %23, i32 0, i32 18
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @bswap32(i8* %25)
  %27 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %28 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %27, i32 0, i32 18
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %30 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %29, i32 0, i32 17
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @bswap32(i8* %31)
  %33 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %34 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %33, i32 0, i32 17
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %36 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %35, i32 0, i32 16
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @bswap64(i8* %37)
  %39 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %40 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %39, i32 0, i32 16
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %42 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %41, i32 0, i32 15
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @bswap64(i8* %43)
  %45 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %46 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %45, i32 0, i32 15
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %48 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %47, i32 0, i32 14
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @bswap64(i8* %49)
  %51 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %52 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %51, i32 0, i32 14
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %54 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %53, i32 0, i32 13
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @bswap32(i8* %55)
  %57 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %58 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %57, i32 0, i32 13
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %60 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %59, i32 0, i32 12
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @bswap64(i8* %61)
  %63 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %64 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %66 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %65, i32 0, i32 11
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @bswap32(i8* %67)
  %69 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %70 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %72 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %71, i32 0, i32 9
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @bswap64(i8* %73)
  %75 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %76 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %78 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %77, i32 0, i32 7
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @bswap32(i8* %79)
  %81 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %82 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %84 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %83, i32 0, i32 9
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @bswap64(i8* %85)
  %87 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %88 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %90 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %89, i32 0, i32 7
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @bswap32(i8* %91)
  %93 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %94 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %93, i32 0, i32 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %96 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %95, i32 0, i32 6
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @bswap32(i8* %97)
  %99 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %100 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %102 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %101, i32 0, i32 5
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @bswap32(i8* %103)
  %105 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %106 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %108 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @bswap32(i8* %109)
  %111 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %112 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %114 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @bswap32(i8* %115)
  %117 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %118 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %120 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %123 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memcpy(i32 %121, i32 %124, i32 4)
  %126 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %127 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %130 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32 %128, i32 %131, i32 4)
  %133 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %4, align 8
  %134 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %3, align 8
  %137 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @memcpy(i32 %135, i32 %138, i32 4)
  ret void
}

declare dso_local i8* @bswap16(i8*) #1

declare dso_local i8* @bswap32(i8*) #1

declare dso_local i8* @bswap64(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
