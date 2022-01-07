; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_detrunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_denode.c_detrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.denode = type { i32, i8*, i32, i32, i32, i32, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.buf = type { i64 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@VV_ROOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NOCRED = common dso_local global %struct.ucred* null, align 8
@IO_SYNC = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@DE_MODIFIED = common dso_local global i32 0, align 4
@FAT_GET_AND_SET = common dso_local global i32 0, align 4
@CLUST_EOFE = common dso_local global i32 0, align 4
@FC_LASTFC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @detrunc(%struct.denode* %0, i32 %1, i32 %2, %struct.ucred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.denode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buf*, align 8
  %18 = alloca %struct.msdosfsmount*, align 8
  store %struct.denode* %0, %struct.denode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ucred* %3, %struct.ucred** %9, align 8
  %19 = load %struct.denode*, %struct.denode** %6, align 8
  %20 = getelementptr inbounds %struct.denode, %struct.denode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_DIRECTORY, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.denode*, %struct.denode** %6, align 8
  %25 = getelementptr inbounds %struct.denode, %struct.denode* %24, i32 0, i32 7
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  store %struct.msdosfsmount* %26, %struct.msdosfsmount** %18, align 8
  %27 = load %struct.denode*, %struct.denode** %6, align 8
  %28 = call %struct.TYPE_6__* @DETOV(%struct.denode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VV_ROOT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %4
  %35 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %36 = call i32 @FAT32(%struct.msdosfsmount* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %218

40:                                               ; preds = %34, %4
  %41 = load %struct.denode*, %struct.denode** %6, align 8
  %42 = getelementptr inbounds %struct.denode, %struct.denode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.denode*, %struct.denode** %6, align 8
  %48 = call %struct.TYPE_6__* @DETOV(%struct.denode* %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @vnode_pager_setsize(%struct.TYPE_6__* %48, i32 %49)
  %51 = load %struct.denode*, %struct.denode** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ucred*, %struct.ucred** %9, align 8
  %54 = call i32 @deextend(%struct.denode* %51, i32 %52, %struct.ucred* %53)
  store i32 %54, i32* %5, align 4
  br label %218

55:                                               ; preds = %40
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.denode*, %struct.denode** %6, align 8
  %60 = getelementptr inbounds %struct.denode, %struct.denode* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.denode*, %struct.denode** %6, align 8
  %63 = getelementptr inbounds %struct.denode, %struct.denode* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  store i32 -1, i32* %12, align 4
  br label %76

64:                                               ; preds = %55
  %65 = load %struct.denode*, %struct.denode** %6, align 8
  %66 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @de_clcount(%struct.msdosfsmount* %66, i32 %67)
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @pcbmap(%struct.denode* %65, i64 %69, i32 0, i32* %12, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %218

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.denode*, %struct.denode** %6, align 8
  %78 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @de_clcount(%struct.msdosfsmount* %78, i32 %79)
  %81 = call i32 @fc_purge(%struct.denode* %77, i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %84 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %82, %85
  store i32 %86, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %145

88:                                               ; preds = %76
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @cntobn(%struct.msdosfsmount* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %96 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %100 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %103 = call i32 @bread(%struct.TYPE_6__* %97, i32 %98, i64 %101, %struct.ucred* %102, %struct.buf** %17)
  store i32 %103, i32* %10, align 4
  br label %115

104:                                              ; preds = %88
  %105 = load %struct.denode*, %struct.denode** %6, align 8
  %106 = call %struct.TYPE_6__* @DETOV(%struct.denode* %105)
  %107 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @de_cluster(%struct.msdosfsmount* %107, i32 %108)
  %110 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %111 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ucred*, %struct.ucred** %9, align 8
  %114 = call i32 @bread(%struct.TYPE_6__* %106, i32 %109, i64 %112, %struct.ucred* %113, %struct.buf** %17)
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %104, %91
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  br label %218

120:                                              ; preds = %115
  %121 = load %struct.buf*, %struct.buf** %17, align 8
  %122 = getelementptr inbounds %struct.buf, %struct.buf* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %128 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = sub nsw i64 %129, %131
  %133 = call i32 @memset(i64 %126, i32 0, i64 %132)
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @IO_SYNC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %120
  %139 = load %struct.buf*, %struct.buf** %17, align 8
  %140 = call i32 @bwrite(%struct.buf* %139)
  br label %144

141:                                              ; preds = %120
  %142 = load %struct.buf*, %struct.buf** %17, align 8
  %143 = call i32 @bdwrite(%struct.buf* %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %76
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.denode*, %struct.denode** %6, align 8
  %148 = getelementptr inbounds %struct.denode, %struct.denode* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @DE_UPDATE, align 4
  %153 = load i32, i32* @DE_MODIFIED, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.denode*, %struct.denode** %6, align 8
  %156 = getelementptr inbounds %struct.denode, %struct.denode* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %151, %145
  %160 = load %struct.denode*, %struct.denode** %6, align 8
  %161 = call %struct.TYPE_6__* @DETOV(%struct.denode* %160)
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %164 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @vtruncbuf(%struct.TYPE_6__* %161, i32 %162, i64 %165)
  store i32 %166, i32* %11, align 4
  %167 = load %struct.denode*, %struct.denode** %6, align 8
  %168 = load %struct.denode*, %struct.denode** %6, align 8
  %169 = call %struct.TYPE_6__* @DETOV(%struct.denode* %168)
  %170 = call i32 @DOINGASYNC(%struct.TYPE_6__* %169)
  %171 = icmp ne i32 %170, 0
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @deupdat(%struct.denode* %167, i32 %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %159
  %178 = load i32, i32* %11, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %180, %177, %159
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, -1
  br i1 %184, label %185, label %204

185:                                              ; preds = %182
  %186 = load i32, i32* @FAT_GET_AND_SET, align 4
  %187 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @CLUST_EOFE, align 4
  %190 = call i32 @fatentry(i32 %186, %struct.msdosfsmount* %187, i32 %188, i32* %13, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %5, align 4
  br label %218

195:                                              ; preds = %185
  %196 = load %struct.denode*, %struct.denode** %6, align 8
  %197 = load i32, i32* @FC_LASTFC, align 4
  %198 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %199, 1
  %201 = call i32 @de_cluster(%struct.msdosfsmount* %198, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @fc_setcache(%struct.denode* %196, i32 %197, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %195, %182
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @MSDOSFSEOF(%struct.msdosfsmount* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %207
  %213 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @freeclusterchain(%struct.msdosfsmount* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %207, %204
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %193, %118, %73, %46, %38
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_6__* @DETOV(%struct.denode*) #1

declare dso_local i32 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deextend(%struct.denode*, i32, %struct.ucred*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i64, i32, i32*, i32) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fc_purge(%struct.denode*, i64) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @bread(%struct.TYPE_6__*, i32, i64, %struct.ucred*, %struct.buf**) #1

declare dso_local i32 @de_cluster(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @vtruncbuf(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @deupdat(%struct.denode*, i32) #1

declare dso_local i32 @DOINGASYNC(%struct.TYPE_6__*) #1

declare dso_local i32 @fatentry(i32, %struct.msdosfsmount*, i32, i32*, i32) #1

declare dso_local i32 @fc_setcache(%struct.denode*, i32, i32, i32) #1

declare dso_local i32 @MSDOSFSEOF(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @freeclusterchain(%struct.msdosfsmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
