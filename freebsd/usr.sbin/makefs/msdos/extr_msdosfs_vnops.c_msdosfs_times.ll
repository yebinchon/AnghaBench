; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vnops.c_msdosfs_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vnops.c_msdosfs_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i64 }
%struct.denode = type { i32, i32, i32, i32, i32 }

@stampst = common dso_local global %struct.stat zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.denode*, %struct.stat*)* @msdosfs_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdosfs_times(%struct.denode* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.denode*, align 8
  %4 = alloca %struct.stat*, align 8
  store %struct.denode* %0, %struct.denode** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @stampst, i32 0, i32 3), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store %struct.stat* @stampst, %struct.stat** %4, align 8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load %struct.stat*, %struct.stat** %4, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %11 = load %struct.denode*, %struct.denode** %3, align 8
  %12 = getelementptr inbounds %struct.denode, %struct.denode* %11, i32 0, i32 4
  %13 = load %struct.denode*, %struct.denode** %3, align 8
  %14 = getelementptr inbounds %struct.denode, %struct.denode* %13, i32 0, i32 3
  %15 = call i32 @unix2fattime(i32* %10, i32* %12, i32* %14)
  %16 = load %struct.stat*, %struct.stat** %4, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 1
  %18 = load %struct.denode*, %struct.denode** %3, align 8
  %19 = getelementptr inbounds %struct.denode, %struct.denode* %18, i32 0, i32 2
  %20 = call i32 @unix2fattime(i32* %17, i32* %19, i32* null)
  %21 = load %struct.stat*, %struct.stat** %4, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %23 = load %struct.denode*, %struct.denode** %3, align 8
  %24 = getelementptr inbounds %struct.denode, %struct.denode* %23, i32 0, i32 1
  %25 = load %struct.denode*, %struct.denode** %3, align 8
  %26 = getelementptr inbounds %struct.denode, %struct.denode* %25, i32 0, i32 0
  %27 = call i32 @unix2fattime(i32* %22, i32* %24, i32* %26)
  ret void
}

declare dso_local i32 @unix2fattime(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
