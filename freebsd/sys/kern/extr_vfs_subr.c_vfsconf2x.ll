; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfsconf2x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfsconf2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32 }
%struct.vfsconf = type { i32, i32, i32, i32 }
%struct.xvfsconf = type { i32*, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, %struct.vfsconf*)* @vfsconf2x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfsconf2x(%struct.sysctl_req* %0, %struct.vfsconf* %1) #0 {
  %3 = alloca %struct.sysctl_req*, align 8
  %4 = alloca %struct.vfsconf*, align 8
  %5 = alloca %struct.xvfsconf, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %3, align 8
  store %struct.vfsconf* %1, %struct.vfsconf** %4, align 8
  %6 = call i32 @bzero(%struct.xvfsconf* %5, i32 32)
  %7 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  %10 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strcpy(i32 %8, i32 %11)
  %13 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  %14 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  %18 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.vfsconf*, %struct.vfsconf** %4, align 8
  %22 = getelementptr inbounds %struct.vfsconf, %struct.vfsconf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.xvfsconf, %struct.xvfsconf* %5, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.sysctl_req*, %struct.sysctl_req** %3, align 8
  %28 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %27, %struct.xvfsconf* %5, i32 32)
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.xvfsconf*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, %struct.xvfsconf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
