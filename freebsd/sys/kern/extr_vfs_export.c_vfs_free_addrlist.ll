; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_free_addrlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_free_addrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netexport = type { %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { %struct.ucred* }
%struct.ucred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netexport*)* @vfs_free_addrlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_free_addrlist(%struct.netexport* %0) #0 {
  %2 = alloca %struct.netexport*, align 8
  %3 = alloca %struct.ucred*, align 8
  store %struct.netexport* %0, %struct.netexport** %2, align 8
  %4 = load %struct.netexport*, %struct.netexport** %2, align 8
  %5 = getelementptr inbounds %struct.netexport, %struct.netexport* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.netexport*, %struct.netexport** %2, align 8
  %10 = getelementptr inbounds %struct.netexport, %struct.netexport* %9, i32 0, i32 2
  %11 = call i32 @vfs_free_addrlist_af(i32** %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.netexport*, %struct.netexport** %2, align 8
  %14 = getelementptr inbounds %struct.netexport, %struct.netexport* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.netexport*, %struct.netexport** %2, align 8
  %19 = getelementptr inbounds %struct.netexport, %struct.netexport* %18, i32 0, i32 1
  %20 = call i32 @vfs_free_addrlist_af(i32** %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.netexport*, %struct.netexport** %2, align 8
  %23 = getelementptr inbounds %struct.netexport, %struct.netexport* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ucred*, %struct.ucred** %24, align 8
  store %struct.ucred* %25, %struct.ucred** %3, align 8
  %26 = load %struct.ucred*, %struct.ucred** %3, align 8
  %27 = icmp ne %struct.ucred* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.ucred*, %struct.ucred** %3, align 8
  %30 = call i32 @crfree(%struct.ucred* %29)
  br label %31

31:                                               ; preds = %28, %21
  ret void
}

declare dso_local i32 @vfs_free_addrlist_af(i32**) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
