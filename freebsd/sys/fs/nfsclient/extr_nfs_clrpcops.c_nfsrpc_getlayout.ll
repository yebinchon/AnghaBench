; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getlayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfsrpc_getlayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsfh = type { i32, i32 }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.nfscllayout = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.ucred = type { i32 }
%struct.nfsclflayout = type { i32 }
%struct.nfsclflayouthead = type { i32 }
%struct.nfsclsession = type { i32 }

@NFSLAYOUT_FLEXFILE = common dso_local global i32 0, align 4
@NFSLAYOUT_NFSV4_1_FILES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFSX_STATEID = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, i32, %struct.nfsfh*, i32, i32*, %struct.TYPE_7__*, i32, %struct.nfscllayout**, %struct.ucred*, i32*)* @nfsrpc_getlayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrpc_getlayout(%struct.nfsmount* %0, i32 %1, %struct.nfsfh* %2, i32 %3, i32* %4, %struct.TYPE_7__* %5, i32 %6, %struct.nfscllayout** %7, %struct.ucred* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsfh*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfscllayout**, align 8
  %20 = alloca %struct.ucred*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.nfscllayout*, align 8
  %23 = alloca %struct.nfsclflayout*, align 8
  %24 = alloca %struct.nfsclflayouthead, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_7__, align 8
  %32 = alloca %struct.nfsclsession*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.nfsfh* %2, %struct.nfsfh** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %17, align 8
  store i32 %6, i32* %18, align 4
  store %struct.nfscllayout** %7, %struct.nfscllayout*** %19, align 8
  store %struct.ucred* %8, %struct.ucred** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32 0, i32* %25, align 4
  %33 = load %struct.nfscllayout**, %struct.nfscllayout*** %19, align 8
  store %struct.nfscllayout* null, %struct.nfscllayout** %33, align 8
  %34 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %35 = call i64 @NFSHASFLEXFILE(%struct.nfsmount* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %10
  %38 = load i32, i32* @NFSLAYOUT_FLEXFILE, align 4
  store i32 %38, i32* %28, align 4
  br label %41

39:                                               ; preds = %10
  %40 = load i32, i32* @NFSLAYOUT_NFSV4_1_FILES, align 4
  store i32 %40, i32* %28, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %43 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %46 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %49 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call %struct.nfscllayout* @nfscl_getlayout(i32 %44, i32 %47, i32 %50, i32 %51, %struct.nfsclflayout** %23, i32* %29)
  store %struct.nfscllayout* %52, %struct.nfscllayout** %22, align 8
  store i32 0, i32* %26, align 4
  %53 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %54 = icmp eq %struct.nfscllayout* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load %struct.nfsclflayout*, %struct.nfsclflayout** %23, align 8
  %57 = icmp eq %struct.nfsclflayout* %56, null
  br i1 %57, label %58, label %194

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %29, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EIO, align 4
  store i32 %62, i32* %11, align 4
  br label %199

63:                                               ; preds = %58
  %64 = call i32 @LIST_INIT(%struct.nfsclflayouthead* %24)
  %65 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %66 = call %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount* %65)
  store %struct.nfsclsession* %66, %struct.nfsclsession** %32, align 8
  %67 = load %struct.nfsclsession*, %struct.nfsclsession** %32, align 8
  %68 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFSX_STATEID, align 4
  %71 = load i32, i32* @NFSX_UNSIGNED, align 4
  %72 = mul nsw i32 3, %71
  %73 = add nsw i32 %70, %72
  %74 = sub nsw i32 %69, %73
  store i32 %74, i32* %27, align 4
  %75 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %76 = icmp eq %struct.nfscllayout* %75, null
  br i1 %76, label %77, label %117

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 %99, i32* %102, align 4
  %103 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %104 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %105 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %108 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @UINT64_MAX, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %27, align 4
  %114 = load %struct.ucred*, %struct.ucred** %20, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @nfsrpc_layoutget(%struct.nfsmount* %103, i32 %106, i32 %109, i32 %110, i32 0, i32 %111, i32 0, i32 %112, i32 %113, %struct.TYPE_7__* %31, i32* %30, %struct.nfsclflayouthead* %24, %struct.ucred* %114, i32* %115, i32* null)
  store i32 %116, i32* %25, align 4
  br label %165

117:                                              ; preds = %63
  store i32 1, i32* %26, align 4
  %118 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %119 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %124 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %133 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %142 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %146, i32* %149, align 4
  %150 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %151 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %152 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %155 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @UINT64_MAX, align 4
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %27, align 4
  %162 = load %struct.ucred*, %struct.ucred** %20, align 8
  %163 = load i32*, i32** %21, align 8
  %164 = call i32 @nfsrpc_layoutget(%struct.nfsmount* %150, i32 %153, i32 %156, i32 %157, i32 %158, i32 %159, i32 0, i32 %160, i32 %161, %struct.TYPE_7__* %31, i32* %30, %struct.nfsclflayouthead* %24, %struct.ucred* %162, i32* %163, i32* null)
  store i32 %164, i32* %25, align 4
  br label %165

165:                                              ; preds = %117, %77
  %166 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %169 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %172 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %30, align 4
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %25, align 4
  %178 = load %struct.ucred*, %struct.ucred** %20, align 8
  %179 = load i32*, i32** %21, align 8
  %180 = call i32 @nfsrpc_layoutgetres(%struct.nfsmount* %166, i32 %167, i32 %170, i32 %173, %struct.TYPE_7__* %31, i32 %174, i32* %175, %struct.nfscllayout** %22, %struct.nfsclflayouthead* %24, i32 %176, i32 %177, i32* null, %struct.ucred* %178, i32* %179)
  store i32 %180, i32* %25, align 4
  %181 = load i32, i32* %25, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %165
  %184 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %185 = load %struct.nfscllayout**, %struct.nfscllayout*** %19, align 8
  store %struct.nfscllayout* %184, %struct.nfscllayout** %185, align 8
  br label %193

186:                                              ; preds = %165
  %187 = load i32, i32* %26, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %191 = call i32 @nfscl_rellayout(%struct.nfscllayout* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %183
  br label %197

194:                                              ; preds = %55
  %195 = load %struct.nfscllayout*, %struct.nfscllayout** %22, align 8
  %196 = load %struct.nfscllayout**, %struct.nfscllayout*** %19, align 8
  store %struct.nfscllayout* %195, %struct.nfscllayout** %196, align 8
  br label %197

197:                                              ; preds = %194, %193
  %198 = load i32, i32* %25, align 4
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %197, %61
  %200 = load i32, i32* %11, align 4
  ret i32 %200
}

declare dso_local i64 @NFSHASFLEXFILE(%struct.nfsmount*) #1

declare dso_local %struct.nfscllayout* @nfscl_getlayout(i32, i32, i32, i32, %struct.nfsclflayout**, i32*) #1

declare dso_local i32 @LIST_INIT(%struct.nfsclflayouthead*) #1

declare dso_local %struct.nfsclsession* @nfsmnt_mdssession(%struct.nfsmount*) #1

declare dso_local i32 @nfsrpc_layoutget(%struct.nfsmount*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32*, %struct.nfsclflayouthead*, %struct.ucred*, i32*, i32*) #1

declare dso_local i32 @nfsrpc_layoutgetres(%struct.nfsmount*, i32, i32, i32, %struct.TYPE_7__*, i32, i32*, %struct.nfscllayout**, %struct.nfsclflayouthead*, i32, i32, i32*, %struct.ucred*, i32*) #1

declare dso_local i32 @nfscl_rellayout(%struct.nfscllayout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
