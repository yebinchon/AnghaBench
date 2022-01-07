; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_eltorito.c_cd9660_boot_setup_section_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_cd9660_eltorito.c_cd9660_boot_setup_section_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_catalog_entry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32* }
%struct.cd9660_boot_image = type { i32, i32, i32, i32 }

@ET_ENTRY_SE = common dso_local global i32 0, align 4
@ET_BOOTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.boot_catalog_entry* (%struct.cd9660_boot_image*)* @cd9660_boot_setup_section_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.boot_catalog_entry* @cd9660_boot_setup_section_entry(%struct.cd9660_boot_image* %0) #0 {
  %2 = alloca %struct.boot_catalog_entry*, align 8
  %3 = alloca %struct.cd9660_boot_image*, align 8
  %4 = alloca %struct.boot_catalog_entry*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.cd9660_boot_image* %0, %struct.cd9660_boot_image** %3, align 8
  %6 = call %struct.boot_catalog_entry* (...) @cd9660_init_boot_catalog_entry()
  store %struct.boot_catalog_entry* %6, %struct.boot_catalog_entry** %4, align 8
  %7 = icmp eq %struct.boot_catalog_entry* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.boot_catalog_entry* null, %struct.boot_catalog_entry** %2, align 8
  br label %50

9:                                                ; preds = %1
  %10 = load i32, i32* @ET_ENTRY_SE, align 4
  %11 = load %struct.boot_catalog_entry*, %struct.boot_catalog_entry** %4, align 8
  %12 = getelementptr inbounds %struct.boot_catalog_entry, %struct.boot_catalog_entry* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.boot_catalog_entry*, %struct.boot_catalog_entry** %4, align 8
  %14 = getelementptr inbounds %struct.boot_catalog_entry, %struct.boot_catalog_entry* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  %16 = load i32, i32* @ET_BOOTABLE, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.cd9660_boot_image*, %struct.cd9660_boot_image** %3, align 8
  %22 = getelementptr inbounds %struct.cd9660_boot_image, %struct.cd9660_boot_image* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.cd9660_boot_image*, %struct.cd9660_boot_image** %3, align 8
  %29 = getelementptr inbounds %struct.cd9660_boot_image, %struct.cd9660_boot_image* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cd9660_721(i32 %30, i32 %33)
  %35 = load %struct.cd9660_boot_image*, %struct.cd9660_boot_image** %3, align 8
  %36 = getelementptr inbounds %struct.cd9660_boot_image, %struct.cd9660_boot_image* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cd9660_721(i32 %37, i32 %40)
  %42 = load %struct.cd9660_boot_image*, %struct.cd9660_boot_image** %3, align 8
  %43 = getelementptr inbounds %struct.cd9660_boot_image, %struct.cd9660_boot_image* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cd9660_731(i32 %44, i32 %47)
  %49 = load %struct.boot_catalog_entry*, %struct.boot_catalog_entry** %4, align 8
  store %struct.boot_catalog_entry* %49, %struct.boot_catalog_entry** %2, align 8
  br label %50

50:                                               ; preds = %9, %8
  %51 = load %struct.boot_catalog_entry*, %struct.boot_catalog_entry** %2, align 8
  ret %struct.boot_catalog_entry* %51
}

declare dso_local %struct.boot_catalog_entry* @cd9660_init_boot_catalog_entry(...) #1

declare dso_local i32 @cd9660_721(i32, i32) #1

declare dso_local i32 @cd9660_731(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
