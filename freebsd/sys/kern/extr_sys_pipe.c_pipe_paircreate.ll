; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_paircreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_paircreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pipepair = type { %struct.pipe, %struct.pipe }
%struct.pipe = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@pipe_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PIPE_DIRECTOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.pipepair**)* @pipe_paircreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_paircreate(%struct.thread* %0, %struct.pipepair** %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pipepair**, align 8
  %5 = alloca %struct.pipepair*, align 8
  %6 = alloca %struct.pipe*, align 8
  %7 = alloca %struct.pipe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.pipepair** %1, %struct.pipepair*** %4, align 8
  %8 = load i32, i32* @pipe_zone, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.pipepair* @uma_zalloc(i32 %8, i32 %9)
  store %struct.pipepair* %10, %struct.pipepair** %5, align 8
  %11 = load %struct.pipepair**, %struct.pipepair*** %4, align 8
  store %struct.pipepair* %10, %struct.pipepair** %11, align 8
  %12 = load %struct.pipepair*, %struct.pipepair** %5, align 8
  %13 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %12, i32 0, i32 1
  store %struct.pipe* %13, %struct.pipe** %6, align 8
  %14 = load %struct.pipepair*, %struct.pipepair** %5, align 8
  %15 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %14, i32 0, i32 0
  store %struct.pipe* %15, %struct.pipe** %7, align 8
  %16 = load %struct.pipe*, %struct.pipe** %6, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.pipe*, %struct.pipe** %6, align 8
  %20 = call i32 @PIPE_MTX(%struct.pipe* %19)
  %21 = call i32 @knlist_init_mtx(i32* %18, i32 %20)
  %22 = load %struct.pipe*, %struct.pipe** %7, align 8
  %23 = getelementptr inbounds %struct.pipe, %struct.pipe* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.pipe*, %struct.pipe** %7, align 8
  %26 = call i32 @PIPE_MTX(%struct.pipe* %25)
  %27 = call i32 @knlist_init_mtx(i32* %24, i32 %26)
  %28 = load %struct.pipe*, %struct.pipe** %6, align 8
  %29 = call i32 @pipe_create(%struct.pipe* %28, i32 1)
  %30 = load %struct.pipe*, %struct.pipe** %7, align 8
  %31 = call i32 @pipe_create(%struct.pipe* %30, i32 0)
  %32 = load i32, i32* @PIPE_DIRECTOK, align 4
  %33 = load %struct.pipe*, %struct.pipe** %6, align 8
  %34 = getelementptr inbounds %struct.pipe, %struct.pipe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @PIPE_DIRECTOK, align 4
  %38 = load %struct.pipe*, %struct.pipe** %7, align 8
  %39 = getelementptr inbounds %struct.pipe, %struct.pipe* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  ret void
}

declare dso_local %struct.pipepair* @uma_zalloc(i32, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32) #1

declare dso_local i32 @PIPE_MTX(%struct.pipe*) #1

declare dso_local i32 @pipe_create(%struct.pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
