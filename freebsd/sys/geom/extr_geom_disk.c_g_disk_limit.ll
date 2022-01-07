; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32 }
%struct.bio = type { i64, i32, i32, i64, i64 }

@BIO_VLIST = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*, %struct.bio*)* @g_disk_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_disk_limit(%struct.disk* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.disk*, %struct.disk** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = call i64 @g_disk_maxsize(%struct.disk* %10, %struct.bio* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BIO_VLIST, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %22
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load %struct.disk*, %struct.disk** %3, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = call i64 @g_disk_vlist_limit(%struct.disk* %34, %struct.bio* %35, i32** %8)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %29
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %39, %29
  br label %75

55:                                               ; preds = %22
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BIO_UNMAPPED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = call i32 @howmany(i64 %69, i32 %70)
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %62, %55
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i64 @g_disk_maxsize(%struct.disk*, %struct.bio*) #1

declare dso_local i64 @g_disk_vlist_limit(%struct.disk*, %struct.bio*, i32**) #1

declare dso_local i32 @howmany(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
