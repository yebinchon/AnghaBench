; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_scan_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_scan_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { %struct.dirlist*, %struct.dirlist* }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirlist*, %struct.sockaddr*)* @scan_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_tree(%struct.dirlist* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dirlist*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dirlist* %0, %struct.dirlist** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %9 = icmp ne %struct.dirlist* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %12 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %11, i32 0, i32 1
  %13 = load %struct.dirlist*, %struct.dirlist** %12, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = call i32 @scan_tree(%struct.dirlist* %13, %struct.sockaddr* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %34

18:                                               ; preds = %10
  %19 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = call i64 @chk_host(%struct.dirlist* %19, %struct.sockaddr* %20, i32* %6, i32* %7, i32* null, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %26 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %25, i32 0, i32 0
  %27 = load %struct.dirlist*, %struct.dirlist** %26, align 8
  %28 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %29 = call i32 @scan_tree(%struct.dirlist* %27, %struct.sockaddr* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %34

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %23, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @chk_host(%struct.dirlist*, %struct.sockaddr*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
