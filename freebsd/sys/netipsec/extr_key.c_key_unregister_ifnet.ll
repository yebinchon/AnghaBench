; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_unregister_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_unregister_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mbuf = type { i32 }

@IPSEC_DIR_INBOUND = common dso_local global i64 0, align 8
@IPSEC_DIR_OUTBOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid direction %u\00", align 1
@IPSEC_SPSTATE_IFNET = common dso_local global i64 0, align 8
@IPSEC_SPSTATE_DEAD = common dso_local global i64 0, align 8
@V_sptree_ifnet = common dso_local global i32* null, align 8
@chain = common dso_local global i32 0, align 4
@V_spd_size = common dso_local global i32 0, align 4
@idhash = common dso_local global i32 0, align 4
@SADB_X_SPDDELETE = common dso_local global i32 0, align 4
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_unregister_ifnet(%struct.secpolicy** %0, i64 %1) #0 {
  %3 = alloca %struct.secpolicy**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i64, align 8
  store %struct.secpolicy** %0, %struct.secpolicy*** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @SPTREE_WLOCK()
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %83, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %86

12:                                               ; preds = %8
  %13 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %13, i64 %14
  %16 = load %struct.secpolicy*, %struct.secpolicy** %15, align 8
  %17 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPSEC_DIR_INBOUND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %23, i64 %24
  %26 = load %struct.secpolicy*, %struct.secpolicy** %25, align 8
  %27 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPSEC_DIR_OUTBOUND, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %22, %12
  %33 = phi i1 [ true, %12 ], [ %31, %22 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %35, i64 %36
  %38 = load %struct.secpolicy*, %struct.secpolicy** %37, align 8
  %39 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @IPSEC_ASSERT(i32 %34, i8* %42)
  %44 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %44, i64 %45
  %47 = load %struct.secpolicy*, %struct.secpolicy** %46, align 8
  %48 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPSEC_SPSTATE_IFNET, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %83

53:                                               ; preds = %32
  %54 = load i64, i64* @IPSEC_SPSTATE_DEAD, align 8
  %55 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %55, i64 %56
  %58 = load %struct.secpolicy*, %struct.secpolicy** %57, align 8
  %59 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  %60 = load i32*, i32** @V_sptree_ifnet, align 8
  %61 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %61, i64 %62
  %64 = load %struct.secpolicy*, %struct.secpolicy** %63, align 8
  %65 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32, i32* %60, i64 %67
  %69 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %69, i64 %70
  %72 = load %struct.secpolicy*, %struct.secpolicy** %71, align 8
  %73 = load i32, i32* @chain, align 4
  %74 = call i32 @TAILQ_REMOVE(i32* %68, %struct.secpolicy* %72, i32 %73)
  %75 = load i32, i32* @V_spd_size, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* @V_spd_size, align 4
  %77 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %77, i64 %78
  %80 = load %struct.secpolicy*, %struct.secpolicy** %79, align 8
  %81 = load i32, i32* @idhash, align 4
  %82 = call i32 @LIST_REMOVE(%struct.secpolicy* %80, i32 %81)
  br label %83

83:                                               ; preds = %53, %52
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %8

86:                                               ; preds = %8
  %87 = call i32 (...) @SPTREE_WUNLOCK()
  %88 = call i64 (...) @SPDCACHE_ENABLED()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (...) @spdcache_clear()
  br label %92

92:                                               ; preds = %90, %86
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* %4, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.secpolicy**, %struct.secpolicy*** %3, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %98, i64 %99
  %101 = load %struct.secpolicy*, %struct.secpolicy** %100, align 8
  %102 = load i32, i32* @SADB_X_SPDDELETE, align 4
  %103 = call %struct.mbuf* @key_setdumpsp(%struct.secpolicy* %101, i32 %102, i32 0, i32 0)
  store %struct.mbuf* %103, %struct.mbuf** %5, align 8
  %104 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %105 = icmp ne %struct.mbuf* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %108 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %109 = call i32 @key_sendup_mbuf(i32* null, %struct.mbuf* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %6, align 8
  br label %93

114:                                              ; preds = %93
  ret void
}

declare dso_local i32 @SPTREE_WLOCK(...) #1

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.secpolicy*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.secpolicy*, i32) #1

declare dso_local i32 @SPTREE_WUNLOCK(...) #1

declare dso_local i64 @SPDCACHE_ENABLED(...) #1

declare dso_local i32 @spdcache_clear(...) #1

declare dso_local %struct.mbuf* @key_setdumpsp(%struct.secpolicy*, i32, i32, i32) #1

declare dso_local i32 @key_sendup_mbuf(i32*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
