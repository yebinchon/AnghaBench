; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.vnode*, %struct.label*, i32, i32)* @lomac_vnode_check_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_mmap(%struct.ucred* %0, %struct.vnode* %1, %struct.label* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mac_lomac*, align 8
  %13 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store %struct.label* %2, %struct.label** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @lomac_enabled, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %60

17:                                               ; preds = %5
  %18 = load %struct.ucred*, %struct.ucred** %7, align 8
  %19 = getelementptr inbounds %struct.ucred, %struct.ucred* %18, i32 0, i32 0
  %20 = load %struct.label*, %struct.label** %19, align 8
  %21 = call %struct.mac_lomac* @SLOT(%struct.label* %20)
  store %struct.mac_lomac* %21, %struct.mac_lomac** %12, align 8
  %22 = load %struct.label*, %struct.label** %9, align 8
  %23 = call %struct.mac_lomac* @SLOT(%struct.label* %22)
  store %struct.mac_lomac* %23, %struct.mac_lomac** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @VM_PROT_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MAP_SHARED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %35 = load %struct.mac_lomac*, %struct.mac_lomac** %13, align 8
  %36 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %34, %struct.mac_lomac* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EACCES, align 4
  store i32 %39, i32* %6, align 4
  br label %60

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %28, %17
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @VM_PROT_READ, align 4
  %44 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.mac_lomac*, %struct.mac_lomac** %13, align 8
  %50 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %51 = call i32 @lomac_dominate_single(%struct.mac_lomac* %49, %struct.mac_lomac* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.mac_lomac*, %struct.mac_lomac** %12, align 8
  %55 = load %struct.mac_lomac*, %struct.mac_lomac** %13, align 8
  %56 = load %struct.vnode*, %struct.vnode** %8, align 8
  %57 = call i32 @maybe_demote(%struct.mac_lomac* %54, %struct.mac_lomac* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.vnode* %56)
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %41
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %53, %38, %16
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_subject_dominate(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_dominate_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @maybe_demote(%struct.mac_lomac*, %struct.mac_lomac*, i8*, i8*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
