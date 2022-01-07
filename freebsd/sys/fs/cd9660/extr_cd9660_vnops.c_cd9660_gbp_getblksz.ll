; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vnops.c_cd9660_gbp_getblksz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cd9660/extr_cd9660_vnops.c_cd9660_gbp_getblksz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.iso_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32)* @cd9660_gbp_getblksz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_gbp_getblksz(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iso_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = call %struct.iso_node* @VTOI(%struct.vnode* %6)
  store %struct.iso_node* %7, %struct.iso_node** %5, align 8
  %8 = load %struct.iso_node*, %struct.iso_node** %5, align 8
  %9 = getelementptr inbounds %struct.iso_node, %struct.iso_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iso_node*, %struct.iso_node** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @blksize(i32 %10, %struct.iso_node* %11, i32 %12)
  ret i32 %13
}

declare dso_local %struct.iso_node* @VTOI(%struct.vnode*) #1

declare dso_local i32 @blksize(i32, %struct.iso_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
