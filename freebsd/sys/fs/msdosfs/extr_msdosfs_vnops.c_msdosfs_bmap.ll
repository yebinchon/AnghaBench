; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_bmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_bmap_args = type { i32*, i32*, i32*, i64, i32**, %struct.vnode* }
%struct.vnode = type { %struct.mount* }
%struct.mount = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fatcache = type { i32 }
%struct.denode = type { %struct.fatcache*, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EFBIG = common dso_local global i32 0, align 4
@FC_LASTMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_bmap_args*)* @msdosfs_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_bmap(%struct.vop_bmap_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_bmap_args*, align 8
  %4 = alloca %struct.fatcache, align 4
  %5 = alloca %struct.denode*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.msdosfsmount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vop_bmap_args* %0, %struct.vop_bmap_args** %3, align 8
  %16 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %16, i32 0, i32 5
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %8, align 8
  %19 = load %struct.vnode*, %struct.vnode** %8, align 8
  %20 = call %struct.denode* @VTODE(%struct.vnode* %19)
  store %struct.denode* %20, %struct.denode** %5, align 8
  %21 = load %struct.denode*, %struct.denode** %5, align 8
  %22 = getelementptr inbounds %struct.denode, %struct.denode* %21, i32 0, i32 1
  %23 = load %struct.msdosfsmount*, %struct.msdosfsmount** %22, align 8
  store %struct.msdosfsmount* %23, %struct.msdosfsmount** %7, align 8
  %24 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %30 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %33, i32 0, i32 4
  %35 = load i32**, i32*** %34, align 8
  store i32* %32, i32** %35, align 8
  br label %36

36:                                               ; preds = %28, %1
  %37 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %38 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %212

42:                                               ; preds = %36
  %43 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %44 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %53 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %58 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %62 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %66 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @EFBIG, align 4
  store i32 %70, i32* %2, align 4
  br label %212

71:                                               ; preds = %60
  %72 = load %struct.denode*, %struct.denode** %5, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %75 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @pcbmap(%struct.denode* %72, i64 %73, i32* %76, i32* null, i32* null)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %71
  %81 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %82 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %87 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %71
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %2, align 4
  br label %212

92:                                               ; preds = %85, %80
  %93 = load %struct.denode*, %struct.denode** %5, align 8
  %94 = getelementptr inbounds %struct.denode, %struct.denode* %93, i32 0, i32 0
  %95 = load %struct.fatcache*, %struct.fatcache** %94, align 8
  %96 = load i64, i64* @FC_LASTMAP, align 8
  %97 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %95, i64 %96
  %98 = bitcast %struct.fatcache* %4 to i8*
  %99 = bitcast %struct.fatcache* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = load %struct.vnode*, %struct.vnode** %8, align 8
  %101 = getelementptr inbounds %struct.vnode, %struct.vnode* %100, i32 0, i32 0
  %102 = load %struct.mount*, %struct.mount** %101, align 8
  store %struct.mount* %102, %struct.mount** %6, align 8
  %103 = load %struct.mount*, %struct.mount** %6, align 8
  %104 = getelementptr inbounds %struct.mount, %struct.mount* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mount*, %struct.mount** %6, align 8
  %107 = getelementptr inbounds %struct.mount, %struct.mount* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %105, %109
  store i32 %110, i32* %13, align 4
  %111 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %112 = call i32 @de_cn2bn(%struct.msdosfsmount* %111, i32 1)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %114 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %160

117:                                              ; preds = %92
  %118 = load i32, i32* %13, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.msdosfsmount*, %struct.msdosfsmount** %7, align 8
  %121 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = sub nsw i64 %122, %123
  %125 = call i32 @ulmin(i32 %119, i64 %124)
  store i32 %125, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %126

126:                                              ; preds = %151, %117
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load %struct.denode*, %struct.denode** %5, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = call i32 @pcbmap(%struct.denode* %131, i64 %135, i32* %9, i32* null, i32* null)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %141 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = icmp ne i32 %139, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138, %130
  br label %154

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %126

154:                                              ; preds = %149, %126
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %158 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  store i32 %156, i32* %159, align 4
  br label %160

160:                                              ; preds = %154, %92
  %161 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %162 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %204

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, 1
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @ulmin(i32 %167, i64 %168)
  store i32 %169, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %170

170:                                              ; preds = %195, %165
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = load %struct.denode*, %struct.denode** %5, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = sub nsw i64 %176, %178
  %180 = call i32 @pcbmap(%struct.denode* %175, i64 %179, i32* %9, i32* null, i32* null)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %185 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %11, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sub nsw i32 %187, %190
  %192 = icmp ne i32 %183, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %182, %174
  br label %198

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %15, align 4
  br label %170

198:                                              ; preds = %193, %170
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %202 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  store i32 %200, i32* %203, align 4
  br label %204

204:                                              ; preds = %198, %160
  %205 = load %struct.denode*, %struct.denode** %5, align 8
  %206 = getelementptr inbounds %struct.denode, %struct.denode* %205, i32 0, i32 0
  %207 = load %struct.fatcache*, %struct.fatcache** %206, align 8
  %208 = load i64, i64* @FC_LASTMAP, align 8
  %209 = getelementptr inbounds %struct.fatcache, %struct.fatcache* %207, i64 %208
  %210 = bitcast %struct.fatcache* %209 to i8*
  %211 = bitcast %struct.fatcache* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %210, i8* align 4 %211, i64 4, i1 false)
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %204, %90, %69, %41
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i64, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @de_cn2bn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @ulmin(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
