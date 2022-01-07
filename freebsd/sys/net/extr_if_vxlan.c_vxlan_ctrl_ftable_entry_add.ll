; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_ftable_entry_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_ftable_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%union.vxlan_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.ifvxlancmd = type { i32, %union.vxlan_sockaddr }
%struct.vxlan_ftable_entry = type { i32 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VXLAN_FE_FLAG_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_ftable_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_ftable_entry_add(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.vxlan_sockaddr, align 8
  %7 = alloca %struct.ifvxlancmd*, align 8
  %8 = alloca %struct.vxlan_ftable_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %11, %struct.ifvxlancmd** %7, align 8
  %12 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %7, align 8
  %13 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %12, i32 0, i32 1
  %14 = bitcast %union.vxlan_sockaddr* %6 to i8*
  %15 = bitcast %union.vxlan_sockaddr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = call i32 @VXLAN_SOCKADDR_IS_IPV46(%union.vxlan_sockaddr* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = call i64 @vxlan_sockaddr_in_any(%union.vxlan_sockaddr* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %20
  %26 = call i64 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %94

30:                                               ; preds = %25
  %31 = bitcast %union.vxlan_sockaddr* %6 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %35 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %30
  %43 = call i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr* %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = call i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr* %6)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %94

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %42
  %53 = call %struct.vxlan_ftable_entry* (...) @vxlan_ftable_entry_alloc()
  store %struct.vxlan_ftable_entry* %53, %struct.vxlan_ftable_entry** %8, align 8
  %54 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %8, align 8
  %55 = icmp eq %struct.vxlan_ftable_entry* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %3, align 4
  br label %94

58:                                               ; preds = %52
  %59 = bitcast %union.vxlan_sockaddr* %6 to %struct.TYPE_7__*
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %65 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = bitcast %union.vxlan_sockaddr* %6 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %63, %58
  %72 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %73 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %8, align 8
  %74 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %7, align 8
  %75 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = bitcast %union.vxlan_sockaddr* %6 to %struct.TYPE_10__*
  %78 = load i32, i32* @VXLAN_FE_FLAG_STATIC, align 4
  %79 = call i32 @vxlan_ftable_entry_init(%struct.vxlan_softc* %72, %struct.vxlan_ftable_entry* %73, i32 %76, %struct.TYPE_10__* %77, i32 %78)
  %80 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %81 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %80)
  %82 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %83 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %8, align 8
  %84 = call i32 @vxlan_ftable_entry_insert(%struct.vxlan_softc* %82, %struct.vxlan_ftable_entry* %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %86 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %71
  %90 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %8, align 8
  %91 = call i32 @vxlan_ftable_entry_free(%struct.vxlan_ftable_entry* %90)
  br label %92

92:                                               ; preds = %89, %71
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %56, %49, %40, %28, %23, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VXLAN_SOCKADDR_IS_IPV46(%union.vxlan_sockaddr*) #2

declare dso_local i64 @vxlan_sockaddr_in_any(%union.vxlan_sockaddr*) #2

declare dso_local i64 @vxlan_sockaddr_in_multicast(%union.vxlan_sockaddr*) #2

declare dso_local i64 @VXLAN_SOCKADDR_IS_IPV6(%union.vxlan_sockaddr*) #2

declare dso_local i32 @vxlan_sockaddr_in6_embedscope(%union.vxlan_sockaddr*) #2

declare dso_local %struct.vxlan_ftable_entry* @vxlan_ftable_entry_alloc(...) #2

declare dso_local i32 @vxlan_ftable_entry_init(%struct.vxlan_softc*, %struct.vxlan_ftable_entry*, i32, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #2

declare dso_local i32 @vxlan_ftable_entry_insert(%struct.vxlan_softc*, %struct.vxlan_ftable_entry*) #2

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #2

declare dso_local i32 @vxlan_ftable_entry_free(%struct.vxlan_ftable_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
