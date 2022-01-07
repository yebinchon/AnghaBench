; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_sequential_heuristic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsrv_sequential_heuristic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsheur = type { i64, i64, i32, %struct.vnode* }
%struct.vnode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uio = type { i64, i32 }

@NUM_HEURISTIC = common dso_local global i32 0, align 4
@nfsheur = common dso_local global %struct.nfsheur* null, align 8
@NHUSE_INIT = common dso_local global i64 0, align 8
@IO_SEQMAX = common dso_local global i32 0, align 4
@MAX_REORDERED_RPC = common dso_local global i32 0, align 4
@NHUSE_INC = common dso_local global i64 0, align 8
@NHUSE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsheur* (%struct.uio*, %struct.vnode*)* @nfsrv_sequential_heuristic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsheur* @nfsrv_sequential_heuristic(%struct.uio* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.uio*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsheur*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  store i32 32, i32* %7, align 4
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = ptrtoint %struct.vnode* %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 8
  %13 = load i32, i32* @NUM_HEURISTIC, align 4
  %14 = sext i32 %13 to i64
  %15 = urem i64 %12, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %17, i64 %19
  store %struct.nfsheur* %20, %struct.nfsheur** %5, align 8
  br label %21

21:                                               ; preds = %75, %2
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %7, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %21
  %26 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %26, i64 %28
  %30 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %29, i32 0, i32 3
  %31 = load %struct.vnode*, %struct.vnode** %30, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = icmp eq %struct.vnode* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %35, i64 %37
  store %struct.nfsheur* %38, %struct.nfsheur** %5, align 8
  br label %76

39:                                               ; preds = %25
  %40 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %40, i64 %42
  %44 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %48, i64 %50
  %52 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @NUM_HEURISTIC, align 4
  %59 = srem i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %60, i64 %62
  %64 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %67 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.nfsheur*, %struct.nfsheur** @nfsheur, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %71, i64 %73
  store %struct.nfsheur* %74, %struct.nfsheur** %5, align 8
  br label %75

75:                                               ; preds = %70, %55
  br label %21

76:                                               ; preds = %34, %21
  %77 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %78 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %77, i32 0, i32 3
  %79 = load %struct.vnode*, %struct.vnode** %78, align 8
  %80 = load %struct.vnode*, %struct.vnode** %4, align 8
  %81 = icmp ne %struct.vnode* %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %85 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %84, i32 0, i32 3
  store %struct.vnode* %83, %struct.vnode** %85, align 8
  %86 = load %struct.uio*, %struct.uio** %3, align 8
  %87 = getelementptr inbounds %struct.uio, %struct.uio* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %90 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i64, i64* @NHUSE_INIT, align 8
  %92 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %93 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.uio*, %struct.uio** %3, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %100 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %99, i32 0, i32 2
  store i32 4, i32* %100, align 8
  br label %104

101:                                              ; preds = %82
  %102 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %103 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.uio*, %struct.uio** %3, align 8
  %107 = getelementptr inbounds %struct.uio, %struct.uio* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %112 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110, %105
  %116 = load %struct.uio*, %struct.uio** %3, align 8
  %117 = getelementptr inbounds %struct.uio, %struct.uio* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %120 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %115, %110
  %124 = load %struct.uio*, %struct.uio** %3, align 8
  %125 = getelementptr inbounds %struct.uio, %struct.uio* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @howmany(i32 %126, i32 16384)
  %128 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %129 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %135 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IO_SEQMAX, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %123
  %140 = load i32, i32* @IO_SEQMAX, align 4
  %141 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %142 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %123
  br label %182

144:                                              ; preds = %115
  %145 = load %struct.uio*, %struct.uio** %3, align 8
  %146 = getelementptr inbounds %struct.uio, %struct.uio* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %149 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = call i32 @qabs(i64 %151)
  %153 = load i32, i32* @MAX_REORDERED_RPC, align 4
  %154 = load %struct.vnode*, %struct.vnode** %4, align 8
  %155 = getelementptr inbounds %struct.vnode, %struct.vnode* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.uio*, %struct.uio** %3, align 8
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @imax(i32 %159, i32 %162)
  %164 = mul nsw i32 %153, %163
  %165 = icmp sle i32 %152, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %144
  br label %181

167:                                              ; preds = %144
  %168 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %169 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %174 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sdiv i32 %175, 2
  store i32 %176, i32* %174, align 8
  br label %180

177:                                              ; preds = %167
  %178 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %179 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %178, i32 0, i32 2
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %172
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %143
  %183 = load i64, i64* @NHUSE_INC, align 8
  %184 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %185 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %189 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @NHUSE_MAX, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load i64, i64* @NHUSE_MAX, align 8
  %195 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  %196 = getelementptr inbounds %struct.nfsheur, %struct.nfsheur* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %197

197:                                              ; preds = %193, %182
  %198 = load %struct.nfsheur*, %struct.nfsheur** %5, align 8
  ret %struct.nfsheur* %198
}

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @qabs(i64) #1

declare dso_local i32 @imax(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
