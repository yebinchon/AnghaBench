; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bhndb/extr_bhndb.c_bhndb_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhndb_devinfo = type { i32, i32 }

@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BHNDB_ADDRSPACE_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @bhndb_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bhndb_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bhndb_devinfo*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32* @device_add_child_ordered(i32* %12, i32 %13, i8* %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %41

20:                                               ; preds = %4
  %21 = load i32, i32* @M_BHND, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call %struct.bhndb_devinfo* @malloc(i32 8, i32 %21, i32 %22)
  store %struct.bhndb_devinfo* %23, %struct.bhndb_devinfo** %10, align 8
  %24 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %10, align 8
  %25 = icmp eq %struct.bhndb_devinfo* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @device_delete_child(i32* %27, i32* %28)
  store i32* null, i32** %5, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* @BHNDB_ADDRSPACE_NATIVE, align 4
  %32 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %10, align 8
  %33 = getelementptr inbounds %struct.bhndb_devinfo, %struct.bhndb_devinfo* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %10, align 8
  %35 = getelementptr inbounds %struct.bhndb_devinfo, %struct.bhndb_devinfo* %34, i32 0, i32 0
  %36 = call i32 @resource_list_init(i32* %35)
  %37 = load i32*, i32** %11, align 8
  %38 = load %struct.bhndb_devinfo*, %struct.bhndb_devinfo** %10, align 8
  %39 = call i32 @device_set_ivars(i32* %37, %struct.bhndb_devinfo* %38)
  %40 = load i32*, i32** %11, align 8
  store i32* %40, i32** %5, align 8
  br label %41

41:                                               ; preds = %30, %26, %19
  %42 = load i32*, i32** %5, align 8
  ret i32* %42
}

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local %struct.bhndb_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_delete_child(i32*, i32*) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.bhndb_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
