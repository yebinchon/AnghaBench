; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsm_mbufuio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsm_mbufuio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i8*, i32* }
%struct.uio = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32 (i8*, i8*, i32)* }

@caddr_t = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"len %d, corrupted mbuf?\00", align 1
@UIO_SYSSPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_mbufuio(%struct.nfsrv_descript* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %17 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %20 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* @caddr_t, align 4
  %24 = call i8* @NFSMTOD(i32* %22, i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @mbuf_len(i32* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8*, i8** %7, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @NFSM_RNDUP(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %189, %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %195

42:                                               ; preds = %39
  %43 = load %struct.uio*, %struct.uio** %5, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.uio*, %struct.uio** %5, align 8
  %49 = getelementptr inbounds %struct.uio, %struct.uio* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp eq %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @EBADRPC, align 4
  store i32 %53, i32* %15, align 4
  br label %222

54:                                               ; preds = %47
  %55 = load %struct.uio*, %struct.uio** %5, align 8
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  %60 = load %struct.uio*, %struct.uio** %5, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %54
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %13, align 8
  br label %73

73:                                               ; preds = %126, %70
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %151

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i32*, i32** %12, align 8
  %82 = call i32* @mbuf_next(i32* %81)
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @EBADRPC, align 4
  store i32 %86, i32* %15, align 4
  br label %222

87:                                               ; preds = %80
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* @caddr_t, align 4
  %90 = call i8* @NFSMTOD(i32* %88, i32 %89)
  store i8* %90, i8** %7, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @mbuf_len(i32* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp sge i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @KASSERT(i32 %95, i8* %98)
  br label %77

100:                                              ; preds = %77
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %9, align 4
  %110 = load %struct.uio*, %struct.uio** %5, align 8
  %111 = getelementptr inbounds %struct.uio, %struct.uio* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @UIO_SYSSPACE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @NFSBCOPY(i8* %116, i8* %117, i32 %118)
  br label %126

120:                                              ; preds = %108
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @CAST_USER_ADDR_T(i8* %122)
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @copyout(i8* %121, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %115
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i8*, i8** %8, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.uio*, %struct.uio** %5, align 8
  %143 = getelementptr inbounds %struct.uio, %struct.uio* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.uio*, %struct.uio** %5, align 8
  %148 = getelementptr inbounds %struct.uio, %struct.uio* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %73

151:                                              ; preds = %73
  %152 = load %struct.uio*, %struct.uio** %5, align 8
  %153 = getelementptr inbounds %struct.uio, %struct.uio* %152, i32 0, i32 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.uio*, %struct.uio** %5, align 8
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %161, align 8
  %164 = load %struct.uio*, %struct.uio** %5, align 8
  %165 = getelementptr inbounds %struct.uio, %struct.uio* %164, i32 0, i32 4
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 1
  store %struct.TYPE_2__* %167, %struct.TYPE_2__** %165, align 8
  br label %189

168:                                              ; preds = %151
  %169 = load %struct.uio*, %struct.uio** %5, align 8
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load %struct.uio*, %struct.uio** %5, align 8
  %177 = getelementptr inbounds %struct.uio, %struct.uio* %176, i32 0, i32 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i8* %175, i8** %179, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load %struct.uio*, %struct.uio** %5, align 8
  %182 = getelementptr inbounds %struct.uio, %struct.uio* %181, i32 0, i32 4
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = sub nsw i64 %186, %180
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 8
  br label %189

189:                                              ; preds = %168, %159
  %190 = load i64, i64* %13, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = sub nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %6, align 4
  br label %39

195:                                              ; preds = %39
  %196 = load i8*, i8** %7, align 8
  %197 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %198 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load i32*, i32** %12, align 8
  %200 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %201 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %200, i32 0, i32 1
  store i32* %199, i32** %201, align 8
  %202 = load i64, i64* %14, align 8
  %203 = icmp sgt i64 %202, 0
  br i1 %203, label %204, label %221

204:                                              ; preds = %195
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %14, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %211 = load i64, i64* %14, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @nfsm_advance(%struct.nfsrv_descript* %210, i64 %211, i32 %212)
  store i32 %213, i32* %15, align 4
  br label %220

214:                                              ; preds = %204
  %215 = load i64, i64* %14, align 8
  %216 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %217 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 %215
  store i8* %219, i8** %217, align 8
  br label %220

220:                                              ; preds = %214, %209
  br label %221

221:                                              ; preds = %220, %195
  br label %222

222:                                              ; preds = %221, %85, %52
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %225 = call i32 @NFSEXITCODE2(i32 %223, %struct.nfsrv_descript* %224)
  %226 = load i32, i32* %15, align 4
  ret i32 %226
}

declare dso_local i8* @NFSMTOD(i32*, i32) #1

declare dso_local i32 @mbuf_len(i32*) #1

declare dso_local i32 @NFSM_RNDUP(i32) #1

declare dso_local i32* @mbuf_next(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @NFSBCOPY(i8*, i8*, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @nfsm_advance(%struct.nfsrv_descript*, i64, i32) #1

declare dso_local i32 @NFSEXITCODE2(i32, %struct.nfsrv_descript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
