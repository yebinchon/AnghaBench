; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapaopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapaopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.cyapa_cdevpriv = type { %struct.TYPE_3__* }

@M_CYAPA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@cyapa_cdevpriv_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @cyapaopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapaopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.cyapa_cdevpriv*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load i32, i32* @M_CYAPA, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.cyapa_cdevpriv* @malloc(i32 8, i32 %11, i32 %14)
  store %struct.cyapa_cdevpriv* %15, %struct.cyapa_cdevpriv** %9, align 8
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %20 = getelementptr inbounds %struct.cyapa_cdevpriv, %struct.cyapa_cdevpriv* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %22 = load i32, i32* @cyapa_cdevpriv_dtor, align 4
  %23 = call i32 @devfs_set_cdevpriv(%struct.cyapa_cdevpriv* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %28 = getelementptr inbounds %struct.cyapa_cdevpriv, %struct.cyapa_cdevpriv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @cyapa_lock(%struct.TYPE_3__* %29)
  %31 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %32 = getelementptr inbounds %struct.cyapa_cdevpriv, %struct.cyapa_cdevpriv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %38 = getelementptr inbounds %struct.cyapa_cdevpriv, %struct.cyapa_cdevpriv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @cyapa_unlock(%struct.TYPE_3__* %39)
  br label %45

41:                                               ; preds = %4
  %42 = load %struct.cyapa_cdevpriv*, %struct.cyapa_cdevpriv** %9, align 8
  %43 = load i32, i32* @M_CYAPA, align 4
  %44 = call i32 @free(%struct.cyapa_cdevpriv* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %26
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local %struct.cyapa_cdevpriv* @malloc(i32, i32, i32) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.cyapa_cdevpriv*, i32) #1

declare dso_local i32 @cyapa_lock(%struct.TYPE_3__*) #1

declare dso_local i32 @cyapa_unlock(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.cyapa_cdevpriv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
