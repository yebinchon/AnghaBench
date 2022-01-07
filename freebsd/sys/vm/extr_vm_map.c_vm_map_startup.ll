; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map_sleep_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vm map sleep mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MAP\00", align 1
@vm_map_zinit = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@mapzone = common dso_local global i8* null, align 8
@MAX_KMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"KMAP ENTRY\00", align 1
@UMA_ZONE_MTXCLASS = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@kmapentzone = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"MAP ENTRY\00", align 1
@mapentzone = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"VMSPACE\00", align 1
@vmspace_zinit = common dso_local global i32 0, align 4
@vmspace_zone = common dso_local global i8* null, align 8
@vm_map_zdtor = common dso_local global i32 0, align 4
@vmspace_zdtor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_startup() #0 {
  %1 = load i32, i32* @MTX_DEF, align 4
  %2 = call i32 @mtx_init(i32* @map_sleep_mtx, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  %3 = load i32, i32* @vm_map_zinit, align 4
  %4 = sext i32 %3 to i64
  %5 = inttoptr i64 %4 to i32*
  %6 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %10 = call i8* (i8*, i32, i32*, i32, i32*, i32, i32*, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32 0, i32* %5, i32 0, i32* %8, i32 %9)
  store i8* %10, i8** @mapzone, align 8
  %11 = load i8*, i8** @mapzone, align 8
  %12 = load i32, i32* @MAX_KMAP, align 4
  %13 = call i32 @uma_prealloc(i8* %11, i32 %12)
  %14 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* @UMA_ZONE_MTXCLASS, align 4
  %18 = load i32, i32* @UMA_ZONE_VM, align 4
  %19 = or i32 %17, %18
  %20 = call i8* (i8*, i32, i32*, i32, i32*, i32, i32*, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32 0, i32* null, i32 0, i32* %16, i32 %19)
  store i8* %20, i8** @kmapentzone, align 8
  %21 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  %24 = call i8* (i8*, i32, i32*, i32, i32*, i32, i32*, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* null, i32 0, i32* null, i32 0, i32* %23, i32 0)
  store i8* %24, i8** @mapentzone, align 8
  %25 = load i32, i32* @vmspace_zinit, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %32 = call i8* (i8*, i32, i32*, i32, i32*, i32, i32*, i32, ...) @uma_zcreate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 4, i32* null, i32 0, i32* %27, i32 0, i32* %30, i32 %31)
  store i8* %32, i8** @vmspace_zone, align 8
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32, i32*, i32, i32*, i32, ...) #1

declare dso_local i32 @uma_prealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
