; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_server = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_server**)* @cuse_server_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_server_get(%struct.cuse_server** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cuse_server**, align 8
  %4 = alloca %struct.cuse_server*, align 8
  %5 = alloca i32, align 4
  store %struct.cuse_server** %0, %struct.cuse_server*** %3, align 8
  %6 = bitcast %struct.cuse_server** %4 to i8**
  %7 = call i32 @devfs_get_cdevpriv(i8** %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.cuse_server**, %struct.cuse_server*** %3, align 8
  store %struct.cuse_server* null, %struct.cuse_server** %11, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = call i32 (...) @cuse_lock()
  %15 = load %struct.cuse_server*, %struct.cuse_server** %4, align 8
  %16 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = call i32 (...) @cuse_unlock()
  %21 = load %struct.cuse_server**, %struct.cuse_server*** %3, align 8
  store %struct.cuse_server* null, %struct.cuse_server** %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %13
  %24 = call i32 (...) @cuse_unlock()
  %25 = load %struct.cuse_server*, %struct.cuse_server** %4, align 8
  %26 = load %struct.cuse_server**, %struct.cuse_server*** %3, align 8
  store %struct.cuse_server* %25, %struct.cuse_server** %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %19, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
