; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs.c_pfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_info = type { {}*, i8*, %struct.pfs_node* }
%struct.pfs_node = type { i32 }
%struct.vfsconf = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@pfstype_root = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%s registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfs_init(%struct.pfs_info* %0, %struct.vfsconf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfs_info*, align 8
  %5 = alloca %struct.vfsconf*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.pfs_info* %0, %struct.pfs_info** %4, align 8
  store %struct.vfsconf* %1, %struct.vfsconf** %5, align 8
  %8 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %9 = call i32 @pfs_fileno_init(%struct.pfs_info* %8)
  %10 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %11 = load i32, i32* @pfstype_root, align 4
  %12 = call %struct.pfs_node* @pfs_alloc_node(%struct.pfs_info* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.pfs_node* %12, %struct.pfs_node** %6, align 8
  %13 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %14 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %15 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %14, i32 0, i32 2
  store %struct.pfs_node* %13, %struct.pfs_node** %15, align 8
  %16 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %17 = call i32 @pfs_fileno_alloc(%struct.pfs_node* %16)
  %18 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %19 = call i32 @pfs_fixup_dir(%struct.pfs_node* %18)
  %20 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %21 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.pfs_info*, %struct.vfsconf*)**
  %23 = load i32 (%struct.pfs_info*, %struct.vfsconf*)*, i32 (%struct.pfs_info*, %struct.vfsconf*)** %22, align 8
  %24 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %25 = load %struct.vfsconf*, %struct.vfsconf** %5, align 8
  %26 = call i32 %23(%struct.pfs_info* %24, %struct.vfsconf* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %31 = call i32 @pfs_destroy(%struct.pfs_node* %30)
  %32 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %33 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %32, i32 0, i32 2
  store %struct.pfs_node* null, %struct.pfs_node** %33, align 8
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.pfs_info*, %struct.pfs_info** %4, align 8
  %40 = getelementptr inbounds %struct.pfs_info, %struct.pfs_info* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %35
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pfs_fileno_init(%struct.pfs_info*) #1

declare dso_local %struct.pfs_node* @pfs_alloc_node(%struct.pfs_info*, i8*, i32) #1

declare dso_local i32 @pfs_fileno_alloc(%struct.pfs_node*) #1

declare dso_local i32 @pfs_fixup_dir(%struct.pfs_node*) #1

declare dso_local i32 @pfs_destroy(%struct.pfs_node*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
