; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_fsk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_fsk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dn_fsk = type { %struct.TYPE_7__, i32, i32*, %struct.dn_schk* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.dn_schk = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.dn_fsk*)* }

@.str = private unnamed_addr constant [47 x i8] c"remove fs %d from fsunlinked, link to sched %d\00", align 1
@dn_cfg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dn_fsk = common dso_local global i32 0, align 4
@sch_chain = common dso_local global i32 0, align 4
@DN_HAVE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"XXX TODO requeue from fs %d to sch %d\00", align 1
@DN_QHT_HASH = common dso_local global i32 0, align 4
@DN_IS_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_fsk*, %struct.dn_schk*)* @fsk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsk_attach(%struct.dn_fsk* %0, %struct.dn_schk* %1) #0 {
  %3 = alloca %struct.dn_fsk*, align 8
  %4 = alloca %struct.dn_schk*, align 8
  store %struct.dn_fsk* %0, %struct.dn_fsk** %3, align 8
  store %struct.dn_schk* %1, %struct.dn_schk** %4, align 8
  %5 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %6 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %10 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ND(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %15 = load i32, i32* @dn_fsk, align 4
  %16 = load i32, i32* @sch_chain, align 4
  %17 = call i32 @SLIST_REMOVE(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), %struct.dn_fsk* %14, i32 %15, i32 %16)
  %18 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %19 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %20 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %19, i32 0, i32 3
  store %struct.dn_schk* %18, %struct.dn_schk** %20, align 8
  %21 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %22 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %21, i32 0, i32 2
  %23 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %24 = load i32, i32* @sch_chain, align 4
  %25 = call i32 @SLIST_INSERT_HEAD(i32* %22, %struct.dn_fsk* %23, i32 %24)
  %26 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %27 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dn_fsk*)*, i32 (%struct.dn_fsk*)** %29, align 8
  %31 = icmp ne i32 (%struct.dn_fsk*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %34 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dn_fsk*)*, i32 (%struct.dn_fsk*)** %36, align 8
  %38 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %39 = call i32 %37(%struct.dn_fsk* %38)
  br label %40

40:                                               ; preds = %32, %2
  %41 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %42 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %46 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %48 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %47, i32 0, i32 3
  %49 = load %struct.dn_schk*, %struct.dn_schk** %48, align 8
  %50 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DN_HAVE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %40
  %57 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %58 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %57, i32 0, i32 3
  %59 = load %struct.dn_schk*, %struct.dn_schk** %58, align 8
  %60 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %63 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %62, i32 0, i32 1
  %64 = call i32 @flow_id_or(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %56, %40
  %66 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %67 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %72 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dn_schk*, %struct.dn_schk** %4, align 8
  %76 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %78)
  %80 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %81 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %70, %65
  %83 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %84 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %83, i32 0, i32 1
  %85 = call i64 @nonzero_mask(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* @DN_QHT_HASH, align 4
  %89 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %90 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 8
  br label %102

94:                                               ; preds = %82
  %95 = load i32, i32* @DN_QHT_HASH, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %98 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %96
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %94, %87
  %103 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %104 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DN_IS_RED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %102
  %111 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %112 = call i32 @config_red(%struct.dn_fsk* %111)
  br label %113

113:                                              ; preds = %110, %102
  ret void
}

declare dso_local i32 @ND(i8*, i32, i32) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.dn_fsk*, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.dn_fsk*, i32) #1

declare dso_local i32 @flow_id_or(i32*, i32*) #1

declare dso_local i32 @D(i8*, i32, i32) #1

declare dso_local i64 @nonzero_mask(i32*) #1

declare dso_local i32 @config_red(%struct.dn_fsk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
