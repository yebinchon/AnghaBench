; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_checkexp_sigdefer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_checkexp_sigdefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.sockaddr = type { i32 }
%struct.ucred = type { i32 }

@SIGDEFERSTOP_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.sockaddr*, i32*, %struct.ucred**, i32*, i32**)* @vfs_checkexp_sigdefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_checkexp_sigdefer(%struct.mount* %0, %struct.sockaddr* %1, i32* %2, %struct.ucred** %3, i32* %4, i32** %5) #0 {
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ucred**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ucred** %3, %struct.ucred*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %15 = load i32, i32* @SIGDEFERSTOP_SILENT, align 4
  %16 = call i32 @sigdeferstop(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.mount*, %struct.mount** %7, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.mount*, %struct.sockaddr*, i32*, %struct.ucred**, i32*, i32**)**
  %24 = load i32 (%struct.mount*, %struct.sockaddr*, i32*, %struct.ucred**, i32*, i32**)*, i32 (%struct.mount*, %struct.sockaddr*, i32*, %struct.ucred**, i32*, i32**)** %23, align 8
  %25 = load %struct.mount*, %struct.mount** %7, align 8
  %26 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.ucred**, %struct.ucred*** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32**, i32*** %12, align 8
  %31 = call i32 %24(%struct.mount* %25, %struct.sockaddr* %26, i32* %27, %struct.ucred** %28, i32* %29, i32** %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @sigallowstop(i32 %32)
  %34 = load i32, i32* %14, align 4
  ret i32 %34
}

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @sigallowstop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
