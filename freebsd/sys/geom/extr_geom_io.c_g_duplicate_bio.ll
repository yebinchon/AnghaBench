; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_duplicate_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_duplicate_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bio* }

@biozone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@BIO_VLIST = common dso_local global i32 0, align 4
@KTR_COMPILE = common dso_local global i32 0, align 4
@KTR_GEOM = common dso_local global i32 0, align 4
@ktr_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @g_duplicate_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load i32, i32* @biozone, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.bio* @uma_zalloc(i32 %4, i32 %7)
  store %struct.bio* %8, %struct.bio** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %2, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BIO_UNMAPPED, align 4
  %13 = load i32, i32* @BIO_VLIST, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 10
  store %struct.bio* %18, %struct.bio** %20, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bio*, %struct.bio** %3, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bio*, %struct.bio** %3, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %65
}

declare dso_local %struct.bio* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
