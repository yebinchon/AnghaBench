; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_deget.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_deget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i64, i32, i64 }
%struct.denode = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.vnode*, %struct.msdosfsmount*, i64, i64, i64, i64 }
%struct.vnode = type { i32 }
%struct.direntry = type { i32 }
%struct.buf = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"deget(pmp %p, dirclust %lu, diroffset %lx, depp %p)\0A\00", align 1
@MSDOSFSROOT = common dso_local global i64 0, align 8
@MSDOSFSROOT_OFS = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@DD_YEAR_SHIFT = common dso_local global i32 0, align 4
@DD_MONTH_SHIFT = common dso_local global i32 0, align 4
@DD_DAY_SHIFT = common dso_local global i32 0, align 4
@SLOT_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"deget(): \22.\22 entry at clust %lu != %lu\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"deget(): pcbmap returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deget(%struct.msdosfsmount* %0, i64 %1, i64 %2, %struct.denode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.denode**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.direntry*, align 8
  %13 = alloca %struct.denode*, align 8
  %14 = alloca %struct.buf*, align 8
  %15 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.denode** %3, %struct.denode*** %9, align 8
  %16 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.denode**, %struct.denode*** %9, align 8
  %20 = bitcast %struct.denode** %19 to i8*
  %21 = call i32 @MSDOSFS_DPRINTF(i8* %20)
  %22 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %23 = call i64 @FAT32(%struct.msdosfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @MSDOSFSROOT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %31 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %29, %25, %4
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %35 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = mul nsw i64 %36, %37
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %11, align 8
  %41 = call %struct.denode* @ecalloc(i32 1, i32 112)
  store %struct.denode* %41, %struct.denode** %13, align 8
  %42 = load %struct.denode*, %struct.denode** %13, align 8
  %43 = getelementptr inbounds %struct.denode, %struct.denode* %42, i32 0, i32 12
  store %struct.vnode* null, %struct.vnode** %43, align 8
  %44 = load %struct.denode*, %struct.denode** %13, align 8
  %45 = getelementptr inbounds %struct.denode, %struct.denode* %44, i32 0, i32 17
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.denode*, %struct.denode** %13, align 8
  %48 = getelementptr inbounds %struct.denode, %struct.denode* %47, i32 0, i32 16
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.denode*, %struct.denode** %13, align 8
  %51 = getelementptr inbounds %struct.denode, %struct.denode* %50, i32 0, i32 15
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.denode*, %struct.denode** %13, align 8
  %54 = getelementptr inbounds %struct.denode, %struct.denode* %53, i32 0, i32 14
  store i64 %52, i64* %54, align 8
  %55 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %56 = load %struct.denode*, %struct.denode** %13, align 8
  %57 = getelementptr inbounds %struct.denode, %struct.denode* %56, i32 0, i32 13
  store %struct.msdosfsmount* %55, %struct.msdosfsmount** %57, align 8
  %58 = load %struct.denode*, %struct.denode** %13, align 8
  %59 = getelementptr inbounds %struct.denode, %struct.denode* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.denode*, %struct.denode** %13, align 8
  %61 = call i32 @fc_purge(%struct.denode* %60, i32 0)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @MSDOSFSROOT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %33
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %67 = call i64 @FAT32(%struct.msdosfsmount* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %137

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %72 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %137

75:                                               ; preds = %69, %33
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @MSDOSFSROOT_OFS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %137

79:                                               ; preds = %75
  %80 = load %struct.denode*, %struct.denode** %13, align 8
  %81 = getelementptr inbounds %struct.denode, %struct.denode* %80, i32 0, i32 12
  store %struct.vnode* inttoptr (i64 -1 to %struct.vnode*), %struct.vnode** %81, align 8
  %82 = load i32, i32* @ATTR_DIRECTORY, align 4
  %83 = load %struct.denode*, %struct.denode** %13, align 8
  %84 = getelementptr inbounds %struct.denode, %struct.denode* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.denode*, %struct.denode** %13, align 8
  %86 = getelementptr inbounds %struct.denode, %struct.denode* %85, i32 0, i32 11
  store i64 0, i64* %86, align 8
  %87 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %88 = call i64 @FAT32(%struct.msdosfsmount* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %92 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.denode*, %struct.denode** %13, align 8
  %95 = getelementptr inbounds %struct.denode, %struct.denode* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %107

96:                                               ; preds = %79
  %97 = load i64, i64* @MSDOSFSROOT, align 8
  %98 = load %struct.denode*, %struct.denode** %13, align 8
  %99 = getelementptr inbounds %struct.denode, %struct.denode* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %101 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DEV_BSIZE, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.denode*, %struct.denode** %13, align 8
  %106 = getelementptr inbounds %struct.denode, %struct.denode* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %96, %90
  %108 = load %struct.denode*, %struct.denode** %13, align 8
  %109 = getelementptr inbounds %struct.denode, %struct.denode* %108, i32 0, i32 10
  store i64 0, i64* %109, align 8
  %110 = load %struct.denode*, %struct.denode** %13, align 8
  %111 = getelementptr inbounds %struct.denode, %struct.denode* %110, i32 0, i32 4
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* @DD_YEAR_SHIFT, align 4
  %113 = shl i32 0, %112
  %114 = load i32, i32* @DD_MONTH_SHIFT, align 4
  %115 = shl i32 1, %114
  %116 = or i32 %113, %115
  %117 = load i32, i32* @DD_DAY_SHIFT, align 4
  %118 = shl i32 1, %117
  %119 = or i32 %116, %118
  %120 = load %struct.denode*, %struct.denode** %13, align 8
  %121 = getelementptr inbounds %struct.denode, %struct.denode* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.denode*, %struct.denode** %13, align 8
  %123 = getelementptr inbounds %struct.denode, %struct.denode* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.denode*, %struct.denode** %13, align 8
  %126 = getelementptr inbounds %struct.denode, %struct.denode* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.denode*, %struct.denode** %13, align 8
  %128 = getelementptr inbounds %struct.denode, %struct.denode* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.denode*, %struct.denode** %13, align 8
  %131 = getelementptr inbounds %struct.denode, %struct.denode* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 8
  %132 = load %struct.denode*, %struct.denode** %13, align 8
  %133 = getelementptr inbounds %struct.denode, %struct.denode* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.denode*, %struct.denode** %13, align 8
  %136 = getelementptr inbounds %struct.denode, %struct.denode* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 4
  br label %158

137:                                              ; preds = %75, %69, %65
  %138 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @readep(%struct.msdosfsmount* %138, i64 %139, i64 %140, %struct.buf** %14, %struct.direntry** %12)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i32, i32* @SLOT_DELETED, align 4
  %146 = load %struct.denode*, %struct.denode** %13, align 8
  %147 = getelementptr inbounds %struct.denode, %struct.denode* %146, i32 0, i32 9
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %145, i32* %149, align 4
  %150 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* null, %struct.denode** %150, align 8
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %5, align 4
  br label %212

152:                                              ; preds = %137
  %153 = load %struct.denode*, %struct.denode** %13, align 8
  %154 = load %struct.direntry*, %struct.direntry** %12, align 8
  %155 = call i32 @DE_INTERNALIZE(%struct.denode* %153, %struct.direntry* %154)
  %156 = load %struct.buf*, %struct.buf** %14, align 8
  %157 = call i32 @brelse(%struct.buf* %156)
  br label %158

158:                                              ; preds = %152, %107
  %159 = load %struct.denode*, %struct.denode** %13, align 8
  %160 = getelementptr inbounds %struct.denode, %struct.denode* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ATTR_DIRECTORY, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %158
  %166 = load i64, i64* %8, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %165
  %169 = load %struct.denode*, %struct.denode** %13, align 8
  %170 = getelementptr inbounds %struct.denode, %struct.denode* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %7, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %168
  %175 = load i64, i64* %7, align 8
  %176 = load %struct.denode*, %struct.denode** %13, align 8
  %177 = getelementptr inbounds %struct.denode, %struct.denode* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to i8*
  %180 = call i32 @MSDOSFS_DPRINTF(i8* %179)
  %181 = load i64, i64* %7, align 8
  %182 = load %struct.denode*, %struct.denode** %13, align 8
  %183 = getelementptr inbounds %struct.denode, %struct.denode* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %174, %168, %165
  %185 = load %struct.denode*, %struct.denode** %13, align 8
  %186 = getelementptr inbounds %struct.denode, %struct.denode* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MSDOSFSROOT, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %184
  %191 = load %struct.denode*, %struct.denode** %13, align 8
  %192 = call i32 @pcbmap(%struct.denode* %191, i32 65535, i32 0, i64* %15, i32 0)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @E2BIG, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %198 = load i64, i64* %15, align 8
  %199 = call i32 @de_cn2off(%struct.msdosfsmount* %197, i64 %198)
  %200 = load %struct.denode*, %struct.denode** %13, align 8
  %201 = getelementptr inbounds %struct.denode, %struct.denode* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 8
  store i32 0, i32* %10, align 4
  br label %207

202:                                              ; preds = %190
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  %206 = call i32 @MSDOSFS_DPRINTF(i8* %205)
  br label %207

207:                                              ; preds = %202, %196
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %158
  %210 = load %struct.denode*, %struct.denode** %13, align 8
  %211 = load %struct.denode**, %struct.denode*** %9, align 8
  store %struct.denode* %210, %struct.denode** %211, align 8
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %209, %144
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @MSDOSFS_DPRINTF(i8*) #1

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local %struct.denode* @ecalloc(i32, i32) #1

declare dso_local i32 @fc_purge(%struct.denode*, i32) #1

declare dso_local i32 @readep(%struct.msdosfsmount*, i64, i64, %struct.buf**, %struct.direntry**) #1

declare dso_local i32 @DE_INTERNALIZE(%struct.denode*, %struct.direntry*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32, i64*, i32) #1

declare dso_local i32 @de_cn2off(%struct.msdosfsmount*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
