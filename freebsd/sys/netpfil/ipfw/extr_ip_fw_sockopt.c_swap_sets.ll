; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_swap_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_swap_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i32 (%struct.ip_fw_chain.0*, i64, i64, i32)* }
%struct.ip_fw_chain.0 = type opaque
%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@ctl3_rewriters = common dso_local global %struct.opcode_obj_rewrite* null, align 8
@ctl3_rsize = common dso_local global i32 0, align 4
@TEST_ALL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MOVE_ALL = common dso_local global i32 0, align 4
@SWAP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_3__*, i32)* @swap_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_sets(%struct.ip_fw_chain* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.opcode_obj_rewrite*, align 8
  %9 = alloca %struct.ip_fw*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %153

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  store %struct.opcode_obj_rewrite* %25, %struct.opcode_obj_rewrite** %8, align 8
  br label %26

26:                                               ; preds = %58, %24
  %27 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %28 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %29 = load i32, i32* @ctl3_rsize, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %28, i64 %30
  %32 = icmp ult %struct.opcode_obj_rewrite* %27, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %26
  %34 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %35 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %34, i32 0, i32 0
  %36 = load i32 (%struct.ip_fw_chain.0*, i64, i64, i32)*, i32 (%struct.ip_fw_chain.0*, i64, i64, i32)** %35, align 8
  %37 = icmp eq i32 (%struct.ip_fw_chain.0*, i64, i64, i32)* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %58

39:                                               ; preds = %33
  %40 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %41 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %40, i32 0, i32 0
  %42 = load i32 (%struct.ip_fw_chain.0*, i64, i64, i32)*, i32 (%struct.ip_fw_chain.0*, i64, i64, i32)** %41, align 8
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %44 = bitcast %struct.ip_fw_chain* %43 to %struct.ip_fw_chain.0*
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @TEST_ALL, align 4
  %52 = call i32 %42(%struct.ip_fw_chain.0* %44, i64 %47, i64 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @EEXIST, align 4
  store i32 %56, i32* %4, align 4
  br label %153

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %38
  %59 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %60 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %59, i32 1
  store %struct.opcode_obj_rewrite* %60, %struct.opcode_obj_rewrite** %8, align 8
  br label %26

61:                                               ; preds = %26
  br label %62

62:                                               ; preds = %61, %21
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %110, %62
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %66 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %63
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %72 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %71, i32 0, i32 1
  %73 = load %struct.ip_fw**, %struct.ip_fw*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %73, i64 %75
  %77 = load %struct.ip_fw*, %struct.ip_fw** %76, align 8
  store %struct.ip_fw* %77, %struct.ip_fw** %9, align 8
  %78 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %79 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %70
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %90 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %109

91:                                               ; preds = %70
  %92 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %93 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %107 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %99, %91
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %63

113:                                              ; preds = %63
  %114 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  store %struct.opcode_obj_rewrite* %114, %struct.opcode_obj_rewrite** %8, align 8
  br label %115

115:                                              ; preds = %149, %113
  %116 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %117 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @ctl3_rewriters, align 8
  %118 = load i32, i32* @ctl3_rsize, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %117, i64 %119
  %121 = icmp ult %struct.opcode_obj_rewrite* %116, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %115
  %123 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %124 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %123, i32 0, i32 0
  %125 = load i32 (%struct.ip_fw_chain.0*, i64, i64, i32)*, i32 (%struct.ip_fw_chain.0*, i64, i64, i32)** %124, align 8
  %126 = icmp eq i32 (%struct.ip_fw_chain.0*, i64, i64, i32)* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %149

128:                                              ; preds = %122
  %129 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %130 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %129, i32 0, i32 0
  %131 = load i32 (%struct.ip_fw_chain.0*, i64, i64, i32)*, i32 (%struct.ip_fw_chain.0*, i64, i64, i32)** %130, align 8
  %132 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %133 = bitcast %struct.ip_fw_chain* %132 to %struct.ip_fw_chain.0*
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i32, i32* @MOVE_ALL, align 4
  br label %146

144:                                              ; preds = %128
  %145 = load i32, i32* @SWAP_ALL, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  %148 = call i32 %131(%struct.ip_fw_chain.0* %133, i64 %136, i64 %139, i32 %147)
  br label %149

149:                                              ; preds = %146, %127
  %150 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %8, align 8
  %151 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %150, i32 1
  store %struct.opcode_obj_rewrite* %151, %struct.opcode_obj_rewrite** %8, align 8
  br label %115

152:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %55, %20
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
