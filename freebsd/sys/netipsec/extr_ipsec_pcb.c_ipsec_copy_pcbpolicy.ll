; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_copy_pcbpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_ipsec_pcb.c_ipsec_copy_pcbpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.secpolicy*, %struct.secpolicy* }
%struct.secpolicy = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"new inp_sp is NULL\00", align 1
@INP_INBOUND_POLICY = common dso_local global i32 0, align 4
@INP_OUTBOUND_POLICY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"new PCB already has configured policies\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@IPSEC_DIR_INBOUND = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipsec_copy_pcbpolicy(%struct.inpcb* %0, %struct.inpcb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.secpolicy*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.inpcb* %1, %struct.inpcb** %5, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

12:                                               ; preds = %2
  %13 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @IPSEC_ASSERT(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @INP_INBOUND_POLICY, align 4
  %25 = load i32, i32* @INP_OUTBOUND_POLICY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @IPSEC_ASSERT(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %32 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %31)
  %33 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %34 = call i32 @INP_LOCK_ASSERT(%struct.inpcb* %33)
  %35 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %36 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @INP_INBOUND_POLICY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %12
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load %struct.secpolicy*, %struct.secpolicy** %47, align 8
  %49 = call %struct.secpolicy* @ipsec_deepcopy_pcbpolicy(%struct.secpolicy* %48)
  store %struct.secpolicy* %49, %struct.secpolicy** %6, align 8
  %50 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %51 = icmp eq %struct.secpolicy* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOBUFS, align 4
  store i32 %53, i32* %3, align 4
  br label %137

54:                                               ; preds = %43
  %55 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %56 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %57 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %56, i32 0, i32 0
  %58 = load i32, i32* @IPSEC_DIR_INBOUND, align 4
  %59 = call i32 @ipsec_setspidx_inpcb(%struct.inpcb* %55, i32* %57, i32 %58)
  %60 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load %struct.secpolicy*, %struct.secpolicy** %63, align 8
  %65 = icmp ne %struct.secpolicy* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %68 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @key_freesp(%struct.secpolicy** %70)
  br label %72

72:                                               ; preds = %66, %54
  %73 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %74 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %75 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store %struct.secpolicy* %73, %struct.secpolicy** %77, align 8
  %78 = load i32, i32* @INP_INBOUND_POLICY, align 4
  %79 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %80 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %72, %12
  %86 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %87 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @INP_OUTBOUND_POLICY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %136

94:                                               ; preds = %85
  %95 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %96 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load %struct.secpolicy*, %struct.secpolicy** %98, align 8
  %100 = call %struct.secpolicy* @ipsec_deepcopy_pcbpolicy(%struct.secpolicy* %99)
  store %struct.secpolicy* %100, %struct.secpolicy** %6, align 8
  %101 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %102 = icmp eq %struct.secpolicy* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @ENOBUFS, align 4
  store i32 %104, i32* %3, align 4
  br label %137

105:                                              ; preds = %94
  %106 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %107 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %108 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %107, i32 0, i32 0
  %109 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %110 = call i32 @ipsec_setspidx_inpcb(%struct.inpcb* %106, i32* %108, i32 %109)
  %111 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %112 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load %struct.secpolicy*, %struct.secpolicy** %114, align 8
  %116 = icmp ne %struct.secpolicy* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %105
  %118 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %119 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = call i32 @key_freesp(%struct.secpolicy** %121)
  br label %123

123:                                              ; preds = %117, %105
  %124 = load %struct.secpolicy*, %struct.secpolicy** %6, align 8
  %125 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %126 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store %struct.secpolicy* %124, %struct.secpolicy** %128, align 8
  %129 = load i32, i32* @INP_OUTBOUND_POLICY, align 4
  %130 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %131 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %123, %85
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %103, %52, %11
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @IPSEC_ASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_LOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.secpolicy* @ipsec_deepcopy_pcbpolicy(%struct.secpolicy*) #1

declare dso_local i32 @ipsec_setspidx_inpcb(%struct.inpcb*, i32*, i32) #1

declare dso_local i32 @key_freesp(%struct.secpolicy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
