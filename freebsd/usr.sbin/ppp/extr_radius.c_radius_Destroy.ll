; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32*, i32*, i32*, i32*, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32*, i64, i32* }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Radius: radius_Destroy\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_Destroy(%struct.radius* %0) #0 {
  %2 = alloca %struct.radius*, align 8
  store %struct.radius* %0, %struct.radius** %2, align 8
  %3 = load %struct.radius*, %struct.radius** %2, align 8
  %4 = getelementptr inbounds %struct.radius, %struct.radius* %3, i32 0, i32 9
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @LogDEBUG, align 4
  %6 = call i32 @log_Printf(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.radius*, %struct.radius** %2, align 8
  %8 = getelementptr inbounds %struct.radius, %struct.radius* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = call i32 @timer_Stop(i32* %9)
  %11 = load %struct.radius*, %struct.radius** %2, align 8
  %12 = getelementptr inbounds %struct.radius, %struct.radius* %11, i32 0, i32 8
  %13 = call i32 @route_DeleteAll(i32* %12)
  %14 = load %struct.radius*, %struct.radius** %2, align 8
  %15 = getelementptr inbounds %struct.radius, %struct.radius* %14, i32 0, i32 7
  %16 = call i32 @route_DeleteAll(i32* %15)
  %17 = load %struct.radius*, %struct.radius** %2, align 8
  %18 = getelementptr inbounds %struct.radius, %struct.radius* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free(i32* %19)
  %21 = load %struct.radius*, %struct.radius** %2, align 8
  %22 = getelementptr inbounds %struct.radius, %struct.radius* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.radius*, %struct.radius** %2, align 8
  %24 = getelementptr inbounds %struct.radius, %struct.radius* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load %struct.radius*, %struct.radius** %2, align 8
  %28 = getelementptr inbounds %struct.radius, %struct.radius* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.radius*, %struct.radius** %2, align 8
  %30 = getelementptr inbounds %struct.radius, %struct.radius* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  %33 = load %struct.radius*, %struct.radius** %2, align 8
  %34 = getelementptr inbounds %struct.radius, %struct.radius* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  %35 = load %struct.radius*, %struct.radius** %2, align 8
  %36 = getelementptr inbounds %struct.radius, %struct.radius* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load %struct.radius*, %struct.radius** %2, align 8
  %40 = getelementptr inbounds %struct.radius, %struct.radius* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.radius*, %struct.radius** %2, align 8
  %42 = getelementptr inbounds %struct.radius, %struct.radius* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free(i32* %43)
  %45 = load %struct.radius*, %struct.radius** %2, align 8
  %46 = getelementptr inbounds %struct.radius, %struct.radius* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.radius*, %struct.radius** %2, align 8
  %48 = getelementptr inbounds %struct.radius, %struct.radius* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @free(i32* %50)
  %52 = load %struct.radius*, %struct.radius** %2, align 8
  %53 = getelementptr inbounds %struct.radius, %struct.radius* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.radius*, %struct.radius** %2, align 8
  %56 = getelementptr inbounds %struct.radius, %struct.radius* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.radius*, %struct.radius** %2, align 8
  %59 = getelementptr inbounds %struct.radius, %struct.radius* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @free(i32* %61)
  %63 = load %struct.radius*, %struct.radius** %2, align 8
  %64 = getelementptr inbounds %struct.radius, %struct.radius* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.radius*, %struct.radius** %2, align 8
  %67 = getelementptr inbounds %struct.radius, %struct.radius* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.radius*, %struct.radius** %2, align 8
  %70 = getelementptr inbounds %struct.radius, %struct.radius* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %83

74:                                               ; preds = %1
  %75 = load %struct.radius*, %struct.radius** %2, align 8
  %76 = getelementptr inbounds %struct.radius, %struct.radius* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load %struct.radius*, %struct.radius** %2, align 8
  %79 = getelementptr inbounds %struct.radius, %struct.radius* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rad_close(i32 %81)
  br label %83

83:                                               ; preds = %74, %1
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @route_DeleteAll(i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @rad_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
