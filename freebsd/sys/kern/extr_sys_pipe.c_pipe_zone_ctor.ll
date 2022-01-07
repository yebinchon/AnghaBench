; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_zone_ctor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_pipe_zone_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipepair = type { i32*, %struct.pipe, %struct.pipe }
%struct.pipe = type { i8*, %struct.pipepair*, %struct.pipe*, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"pipe_zone_ctor: wrong size\00", align 1
@PIPE_ACTIVE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @pipe_zone_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_zone_ctor(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pipepair*, align 8
  %10 = alloca %struct.pipe*, align 8
  %11 = alloca %struct.pipe*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 88
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.pipepair*
  store %struct.pipepair* %18, %struct.pipepair** %9, align 8
  %19 = load %struct.pipepair*, %struct.pipepair** %9, align 8
  %20 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %19, i32 0, i32 2
  store %struct.pipe* %20, %struct.pipe** %10, align 8
  %21 = load %struct.pipe*, %struct.pipe** %10, align 8
  %22 = call i32 @bzero(%struct.pipe* %21, i32 40)
  %23 = load %struct.pipe*, %struct.pipe** %10, align 8
  %24 = getelementptr inbounds %struct.pipe, %struct.pipe* %23, i32 0, i32 3
  %25 = call i32 @vfs_timestamp(i32* %24)
  %26 = load %struct.pipe*, %struct.pipe** %10, align 8
  %27 = getelementptr inbounds %struct.pipe, %struct.pipe* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pipe*, %struct.pipe** %10, align 8
  %30 = getelementptr inbounds %struct.pipe, %struct.pipe* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pipe*, %struct.pipe** %10, align 8
  %32 = getelementptr inbounds %struct.pipe, %struct.pipe* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 8
  %33 = load %struct.pipepair*, %struct.pipepair** %9, align 8
  %34 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %33, i32 0, i32 1
  store %struct.pipe* %34, %struct.pipe** %11, align 8
  %35 = load %struct.pipe*, %struct.pipe** %11, align 8
  %36 = call i32 @bzero(%struct.pipe* %35, i32 40)
  %37 = load %struct.pipe*, %struct.pipe** %10, align 8
  %38 = getelementptr inbounds %struct.pipe, %struct.pipe* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pipe*, %struct.pipe** %11, align 8
  %41 = getelementptr inbounds %struct.pipe, %struct.pipe* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pipe*, %struct.pipe** %10, align 8
  %43 = getelementptr inbounds %struct.pipe, %struct.pipe* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pipe*, %struct.pipe** %11, align 8
  %46 = getelementptr inbounds %struct.pipe, %struct.pipe* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pipe*, %struct.pipe** %11, align 8
  %48 = getelementptr inbounds %struct.pipe, %struct.pipe* %47, i32 0, i32 5
  store i32 %44, i32* %48, align 8
  %49 = load %struct.pipe*, %struct.pipe** %11, align 8
  %50 = load %struct.pipe*, %struct.pipe** %10, align 8
  %51 = getelementptr inbounds %struct.pipe, %struct.pipe* %50, i32 0, i32 2
  store %struct.pipe* %49, %struct.pipe** %51, align 8
  %52 = load %struct.pipepair*, %struct.pipepair** %9, align 8
  %53 = load %struct.pipe*, %struct.pipe** %10, align 8
  %54 = getelementptr inbounds %struct.pipe, %struct.pipe* %53, i32 0, i32 1
  store %struct.pipepair* %52, %struct.pipepair** %54, align 8
  %55 = load %struct.pipe*, %struct.pipe** %10, align 8
  %56 = load %struct.pipe*, %struct.pipe** %11, align 8
  %57 = getelementptr inbounds %struct.pipe, %struct.pipe* %56, i32 0, i32 2
  store %struct.pipe* %55, %struct.pipe** %57, align 8
  %58 = load %struct.pipepair*, %struct.pipepair** %9, align 8
  %59 = load %struct.pipe*, %struct.pipe** %11, align 8
  %60 = getelementptr inbounds %struct.pipe, %struct.pipe* %59, i32 0, i32 1
  store %struct.pipepair* %58, %struct.pipepair** %60, align 8
  %61 = load i8*, i8** @PIPE_ACTIVE, align 8
  %62 = load %struct.pipe*, %struct.pipe** %10, align 8
  %63 = getelementptr inbounds %struct.pipe, %struct.pipe* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @PIPE_ACTIVE, align 8
  %65 = load %struct.pipe*, %struct.pipe** %11, align 8
  %66 = getelementptr inbounds %struct.pipe, %struct.pipe* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pipepair*, %struct.pipepair** %9, align 8
  %68 = getelementptr inbounds %struct.pipepair, %struct.pipepair* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(%struct.pipe*, i32) #1

declare dso_local i32 @vfs_timestamp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
