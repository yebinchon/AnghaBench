; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_clone_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_clone_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bio* }

@biozone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BIO_ORDERED = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@BIO_VLIST = common dso_local global i32 0, align 4
@BIO_ZONE = common dso_local global i64 0, align 8
@KTR_COMPILE = common dso_local global i32 0, align 4
@KTR_GEOM = common dso_local global i32 0, align 4
@ktr_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @g_clone_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load i32, i32* @biozone, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.bio* @uma_zalloc(i32 %4, i32 %7)
  store %struct.bio* %8, %struct.bio** %3, align 8
  %9 = load %struct.bio*, %struct.bio** %3, align 8
  %10 = icmp ne %struct.bio* %9, null
  br i1 %10, label %11, label %92

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 14
  store %struct.bio* %12, %struct.bio** %14, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bio*, %struct.bio** %3, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.bio*, %struct.bio** %2, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BIO_ORDERED, align 4
  %24 = load i32, i32* @BIO_UNMAPPED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @BIO_VLIST, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %22, %27
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %3, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bio*, %struct.bio** %3, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bio*, %struct.bio** %3, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.bio*, %struct.bio** %3, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 9
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bio*, %struct.bio** %3, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bio*, %struct.bio** %2, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bio*, %struct.bio** %3, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.bio*, %struct.bio** %2, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BIO_ZONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %11
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 6
  %74 = load %struct.bio*, %struct.bio** %3, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 6
  %76 = call i32 @bcopy(i32* %73, i32* %75, i32 4)
  br label %77

77:                                               ; preds = %71, %11
  %78 = load %struct.bio*, %struct.bio** %2, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bio*, %struct.bio** %3, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bio*, %struct.bio** %2, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bio*, %struct.bio** %3, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bio*, %struct.bio** %2, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %77, %1
  %93 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %93
}

declare dso_local %struct.bio* @uma_zalloc(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
