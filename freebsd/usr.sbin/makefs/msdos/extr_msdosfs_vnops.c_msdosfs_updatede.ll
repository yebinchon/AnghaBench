; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vnops.c_msdosfs_updatede.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_vnops.c_msdosfs_updatede.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32 }
%struct.buf = type { i32 }
%struct.direntry = type { i32 }

@DE_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.denode*)* @msdosfs_updatede to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_updatede(%struct.denode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.denode*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.direntry*, align 8
  %6 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %3, align 8
  %7 = load i32, i32* @DE_MODIFIED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.denode*, %struct.denode** %3, align 8
  %10 = getelementptr inbounds %struct.denode, %struct.denode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.denode*, %struct.denode** %3, align 8
  %14 = call i32 @readde(%struct.denode* %13, %struct.buf** %4, %struct.direntry** %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.direntry*, %struct.direntry** %5, align 8
  %21 = load %struct.denode*, %struct.denode** %3, align 8
  %22 = call i32 @DE_EXTERNALIZE(%struct.direntry* %20, %struct.denode* %21)
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = call i32 @bwrite(%struct.buf* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @readde(%struct.denode*, %struct.buf**, %struct.direntry**) #1

declare dso_local i32 @DE_EXTERNALIZE(%struct.direntry*, %struct.denode*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
