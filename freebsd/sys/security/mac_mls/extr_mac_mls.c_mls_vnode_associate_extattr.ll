; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_vnode_associate_extattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_vnode_associate_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@IO_NODELOCKED = common dso_local global i32 0, align 4
@MAC_MLS_EXTATTR_NAMESPACE = common dso_local global i32 0, align 4
@MAC_MLS_EXTATTR_NAME = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"mls_vnode_associate_extattr: bad size %d\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"mls_vnode_associate_extattr: invalid\0A\00", align 1
@MAC_MLS_FLAGS_BOTH = common dso_local global i32 0, align 4
@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"mls_associated_vnode_extattr: not effective\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.label*, %struct.vnode*, %struct.label*)* @mls_vnode_associate_extattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_vnode_associate_extattr(%struct.mount* %0, %struct.label* %1, %struct.vnode* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.label*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_mls, align 4
  %11 = alloca %struct.mac_mls*, align 8
  %12 = alloca %struct.mac_mls*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.label* %1, %struct.label** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %15 = load %struct.label*, %struct.label** %7, align 8
  %16 = call %struct.mac_mls* @SLOT(%struct.label* %15)
  store %struct.mac_mls* %16, %struct.mac_mls** %11, align 8
  %17 = load %struct.label*, %struct.label** %9, align 8
  %18 = call %struct.mac_mls* @SLOT(%struct.label* %17)
  store %struct.mac_mls* %18, %struct.mac_mls** %12, align 8
  store i32 4, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @bzero(%struct.mac_mls* %10, i32 %19)
  %21 = load %struct.vnode*, %struct.vnode** %8, align 8
  %22 = load i32, i32* @IO_NODELOCKED, align 4
  %23 = load i32, i32* @MAC_MLS_EXTATTR_NAMESPACE, align 4
  %24 = load i32, i32* @MAC_MLS_EXTATTR_NAME, align 4
  %25 = bitcast %struct.mac_mls* %10 to i8*
  %26 = load i32, i32* @curthread, align 4
  %27 = call i32 @vn_extattr_get(%struct.vnode* %21, i32 %22, i32 %23, i32 %24, i32* %13, i8* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @ENOATTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %4
  %36 = load %struct.mac_mls*, %struct.mac_mls** %11, align 8
  %37 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %38 = call i32 @mls_copy_effective(%struct.mac_mls* %36, %struct.mac_mls* %37)
  store i32 0, i32* %5, align 4
  br label %72

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 4
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EPERM, align 4
  store i32 %52, i32* %5, align 4
  br label %72

53:                                               ; preds = %45
  %54 = call i64 @mls_valid(%struct.mac_mls* %10)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %5, align 4
  br label %72

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAC_MLS_FLAGS_BOTH, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EPERM, align 4
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load %struct.mac_mls*, %struct.mac_mls** %12, align 8
  %71 = call i32 @mls_copy_effective(%struct.mac_mls* %10, %struct.mac_mls* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %66, %56, %49, %42, %35
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @bzero(%struct.mac_mls*, i32) #1

declare dso_local i32 @vn_extattr_get(%struct.vnode*, i32, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @mls_copy_effective(%struct.mac_mls*, %struct.mac_mls*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @mls_valid(%struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
