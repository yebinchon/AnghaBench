; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_client**)* @cuse_client_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_get(%struct.cuse_client** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cuse_client**, align 8
  %4 = alloca %struct.cuse_client*, align 8
  %5 = alloca i32, align 4
  store %struct.cuse_client** %0, %struct.cuse_client*** %3, align 8
  %6 = bitcast %struct.cuse_client** %4 to i8**
  %7 = call i32 @devfs_get_cdevpriv(i8** %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.cuse_client**, %struct.cuse_client*** %3, align 8
  store %struct.cuse_client* null, %struct.cuse_client** %11, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = call i32 (...) @cuse_lock()
  %15 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %16 = call i64 @CUSE_CLIENT_CLOSING(%struct.cuse_client* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %20 = getelementptr inbounds %struct.cuse_client, %struct.cuse_client* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %13
  %26 = call i32 (...) @cuse_unlock()
  %27 = load %struct.cuse_client**, %struct.cuse_client*** %3, align 8
  store %struct.cuse_client* null, %struct.cuse_client** %27, align 8
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %18
  %30 = call i32 (...) @cuse_unlock()
  %31 = load %struct.cuse_client*, %struct.cuse_client** %4, align 8
  %32 = load %struct.cuse_client**, %struct.cuse_client*** %3, align 8
  store %struct.cuse_client* %31, %struct.cuse_client** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %25, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i64 @CUSE_CLIENT_CLOSING(%struct.cuse_client*) #1

declare dso_local i32 @cuse_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
