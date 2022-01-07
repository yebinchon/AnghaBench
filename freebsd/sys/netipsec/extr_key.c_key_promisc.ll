; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sadb_msghdr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.keycb = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"null socket\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"null mbuf\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"null msghdr\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"null msg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sadb_msghdr*)* @key_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_promisc(%struct.socket* %0, %struct.mbuf* %1, %struct.sadb_msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sadb_msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.keycb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sadb_msghdr* %2, %struct.sadb_msghdr** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = icmp ne %struct.socket* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @IPSEC_ASSERT(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @IPSEC_ASSERT(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %19 = icmp ne %struct.sadb_msghdr* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @IPSEC_ASSERT(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %23 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @IPSEC_ASSERT(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %29 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PFKEY_UNUNIT64(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @key_senderror(%struct.socket* %38, %struct.mbuf* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %96

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = call i64 @sotorawcb(%struct.socket* %47)
  %49 = inttoptr i64 %48 to %struct.keycb*
  store %struct.keycb* %49, %struct.keycb** %9, align 8
  %50 = icmp eq %struct.keycb* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @key_senderror(%struct.socket* %52, %struct.mbuf* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %96

56:                                               ; preds = %46
  %57 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %58 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %62 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %74 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %56, %56
  %67 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %68 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.keycb*, %struct.keycb** %9, align 8
  %73 = getelementptr inbounds %struct.keycb, %struct.keycb* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %79

74:                                               ; preds = %56
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %77 = load i32, i32* @EINVAL, align 4
  %78 = call i32 @key_senderror(%struct.socket* %75, %struct.mbuf* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %66
  %80 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %81 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.socket*, %struct.socket** %5, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %86 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %87 = call i32 @key_sendup_mbuf(%struct.socket* %84, %struct.mbuf* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %96

88:                                               ; preds = %42
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = call i32 @PFKEY_ALIGN8(i32 4)
  %91 = call i32 @m_adj(%struct.mbuf* %89, i32 %90)
  %92 = load %struct.socket*, %struct.socket** %5, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %94 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %95 = call i32 @key_sendup_mbuf(%struct.socket* %92, %struct.mbuf* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %88, %79, %74, %51, %37
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @PFKEY_UNUNIT64(i32) #1

declare dso_local i32 @key_senderror(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local i64 @sotorawcb(%struct.socket*) #1

declare dso_local i32 @key_sendup_mbuf(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
