; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_register_ifnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_register_ifnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mbuf = type { i32 }

@IPSEC_DIR_INBOUND = common dso_local global i64 0, align 8
@IPSEC_DIR_OUTBOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid direction %u\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@V_sptree_ifnet = common dso_local global i32* null, align 8
@chain = common dso_local global i32 0, align 4
@idhash = common dso_local global i32 0, align 4
@IPSEC_SPSTATE_IFNET = common dso_local global i32 0, align 4
@SADB_X_SPDADD = common dso_local global i32 0, align 4
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_register_ifnet(%struct.secpolicy** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicy**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.secpolicy** %0, %struct.secpolicy*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @SPTREE_WLOCK()
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %14, i64 %15
  %17 = load %struct.secpolicy*, %struct.secpolicy** %16, align 8
  %18 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPSEC_DIR_INBOUND, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %24, i64 %25
  %27 = load %struct.secpolicy*, %struct.secpolicy** %26, align 8
  %28 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IPSEC_DIR_OUTBOUND, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %23, %13
  %34 = phi i1 [ true, %13 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  %36 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %36, i64 %37
  %39 = load %struct.secpolicy*, %struct.secpolicy** %38, align 8
  %40 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @IPSEC_ASSERT(i32 %35, i8* %43)
  %45 = call i32 (...) @key_getnewspid()
  %46 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %46, i64 %47
  %49 = load %struct.secpolicy*, %struct.secpolicy** %48, align 8
  %50 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 4
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = call i32 (...) @SPTREE_WUNLOCK()
  %54 = load i32, i32* @EAGAIN, align 4
  store i32 %54, i32* %3, align 4
  br label %126

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %9

59:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %99, %59
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load i32*, i32** @V_sptree_ifnet, align 8
  %66 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %66, i64 %67
  %69 = load %struct.secpolicy*, %struct.secpolicy** %68, align 8
  %70 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %74, i64 %75
  %77 = load %struct.secpolicy*, %struct.secpolicy** %76, align 8
  %78 = load i32, i32* @chain, align 4
  %79 = call i32 @TAILQ_INSERT_TAIL(i32* %73, %struct.secpolicy* %77, i32 %78)
  %80 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %80, i64 %81
  %83 = load %struct.secpolicy*, %struct.secpolicy** %82, align 8
  %84 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SPHASH_HASH(i32 %85)
  %87 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %87, i64 %88
  %90 = load %struct.secpolicy*, %struct.secpolicy** %89, align 8
  %91 = load i32, i32* @idhash, align 4
  %92 = call i32 @LIST_INSERT_HEAD(i32 %86, %struct.secpolicy* %90, i32 %91)
  %93 = load i32, i32* @IPSEC_SPSTATE_IFNET, align 4
  %94 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %94, i64 %95
  %97 = load %struct.secpolicy*, %struct.secpolicy** %96, align 8
  %98 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  br label %99

99:                                               ; preds = %64
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %7, align 8
  br label %60

102:                                              ; preds = %60
  %103 = call i32 (...) @SPTREE_WUNLOCK()
  store i64 0, i64* %7, align 8
  br label %104

104:                                              ; preds = %122, %102
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %5, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load %struct.secpolicy**, %struct.secpolicy*** %4, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.secpolicy*, %struct.secpolicy** %109, i64 %110
  %112 = load %struct.secpolicy*, %struct.secpolicy** %111, align 8
  %113 = load i32, i32* @SADB_X_SPDADD, align 4
  %114 = call %struct.mbuf* @key_setdumpsp(%struct.secpolicy* %112, i32 %113, i32 0, i32 0)
  store %struct.mbuf* %114, %struct.mbuf** %6, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %116 = icmp ne %struct.mbuf* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %119 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %120 = call i32 @key_sendup_mbuf(i32* null, %struct.mbuf* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %108
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %7, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %7, align 8
  br label %104

125:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %52
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @SPTREE_WLOCK(...) #1

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @key_getnewspid(...) #1

declare dso_local i32 @SPTREE_WUNLOCK(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.secpolicy*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.secpolicy*, i32) #1

declare dso_local i32 @SPHASH_HASH(i32) #1

declare dso_local %struct.mbuf* @key_setdumpsp(%struct.secpolicy*, i32, i32, i32) #1

declare dso_local i32 @key_sendup_mbuf(i32*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
