; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_serve_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_serve_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mq = type { %struct.mbuf* }
%struct.dn_sch_inst = type { i64, i32, i32, %struct.TYPE_11__, i32, %struct.dn_schk* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.dn_schk = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.mbuf* (%struct.dn_sch_inst*)* }
%struct.TYPE_13__ = type { i32 }

@DN_ACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"bw=0 and credit<0 ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mq*, %struct.dn_sch_inst*, i32)* @serve_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @serve_sched(%struct.mq* %0, %struct.dn_sch_inst* %1, i32 %2) #0 {
  %4 = alloca %struct.mq*, align 8
  %5 = alloca %struct.dn_sch_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mq, align 8
  %8 = alloca %struct.dn_schk*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mq* %0, %struct.mq** %4, align 8
  store %struct.dn_sch_inst* %1, %struct.dn_sch_inst** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %16 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %15, i32 0, i32 5
  %17 = load %struct.dn_schk*, %struct.dn_schk** %16, align 8
  store %struct.dn_schk* %17, %struct.dn_schk** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %18 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %19 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load %struct.mq*, %struct.mq** %4, align 8
  %26 = icmp eq %struct.mq* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  store %struct.mq* %7, %struct.mq** %4, align 8
  %28 = load %struct.mq*, %struct.mq** %4, align 8
  %29 = getelementptr inbounds %struct.mq, %struct.mq* %28, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.dn_schk*, %struct.dn_schk** %8, align 8
  %32 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @DN_ACTIVE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %38 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %46 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %53 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %59

56:                                               ; preds = %30
  %57 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %58 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %43
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %62 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %97, %59
  %64 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %65 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load %struct.dn_schk*, %struct.dn_schk** %8, align 8
  %70 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.mbuf* (%struct.dn_sch_inst*)*, %struct.mbuf* (%struct.dn_sch_inst*)** %72, align 8
  %74 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %75 = call %struct.mbuf* %73(%struct.dn_sch_inst* %74)
  store %struct.mbuf* %75, %struct.mbuf** %9, align 8
  %76 = icmp ne %struct.mbuf* %75, null
  br label %77

77:                                               ; preds = %68, %63
  %78 = phi i1 [ false, %63 ], [ %76, %68 ]
  br i1 %78, label %79, label %119

79:                                               ; preds = %77
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %97

85:                                               ; preds = %79
  %86 = load i32, i32* @hz, align 4
  %87 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 8
  %92 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %93 = load %struct.dn_schk*, %struct.dn_schk** %8, align 8
  %94 = call i32 @extra_bits(%struct.mbuf* %92, %struct.dn_schk* %93)
  %95 = add nsw i32 %91, %94
  %96 = mul nsw i32 %86, %95
  br label %97

97:                                               ; preds = %85, %84
  %98 = phi i32 [ 0, %84 ], [ %96, %85 ]
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %102 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dn_cfg, i32 0, i32 0), align 4
  %106 = load %struct.dn_schk*, %struct.dn_schk** %8, align 8
  %107 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %105, %109
  %111 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %112 = call %struct.TYPE_13__* @dn_tag_get(%struct.mbuf* %111)
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %115 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %118 = call i32 @mq_append(%struct.TYPE_12__* %116, %struct.mbuf* %117)
  br label %63

119:                                              ; preds = %77
  %120 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %121 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %127 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  br label %162

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  %130 = icmp sgt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @KASSERT(i32 %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %137 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %135, %138
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @div64(i64 %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %143 = icmp ne %struct.mbuf* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %128
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %147 = call %struct.TYPE_13__* @dn_tag_get(%struct.mbuf* %146)
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %144, %128
  %152 = load i32, i32* @DN_ACTIVE, align 4
  %153 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %154 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %157, %158
  %160 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %161 = call i32 @heap_insert(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dn_cfg, i32 0, i32 1), i32 %159, %struct.dn_sch_inst* %160)
  br label %162

162:                                              ; preds = %151, %124
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.mq*, %struct.mq** %4, align 8
  %170 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %5, align 8
  %171 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %170, i32 0, i32 3
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @transmit_event(%struct.mq* %169, %struct.TYPE_11__* %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %165, %162
  %175 = load %struct.mq*, %struct.mq** %4, align 8
  %176 = getelementptr inbounds %struct.mq, %struct.mq* %175, i32 0, i32 0
  %177 = load %struct.mbuf*, %struct.mbuf** %176, align 8
  ret %struct.mbuf* %177
}

declare dso_local i32 @extra_bits(%struct.mbuf*, %struct.dn_schk*) #1

declare dso_local %struct.TYPE_13__* @dn_tag_get(%struct.mbuf*) #1

declare dso_local i32 @mq_append(%struct.TYPE_12__*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @div64(i64, i32) #1

declare dso_local i32 @heap_insert(i32*, i32, %struct.dn_sch_inst*) #1

declare dso_local i32 @transmit_event(%struct.mq*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
