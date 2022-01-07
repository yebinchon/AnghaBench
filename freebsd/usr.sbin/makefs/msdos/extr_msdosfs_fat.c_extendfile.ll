; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_extendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_extendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i64, i32, %struct.TYPE_2__*, %struct.msdosfsmount* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.msdosfsmount = type { i32, i32 }
%struct.buf = type { i32 }

@MSDOSFSROOT = common dso_local global i64 0, align 8
@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@FC_LASTFC = common dso_local global i64 0, align 8
@FCE_EMPTY = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@FC_NEXTTOLASTFC = common dso_local global i64 0, align 8
@CLUST_EOFE = common dso_local global i32 0, align 4
@FAT_SET = common dso_local global i32 0, align 4
@DE_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extendfile(%struct.denode* %0, i64 %1, %struct.buf** %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.denode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buf**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.msdosfsmount*, align 8
  %17 = alloca %struct.buf*, align 8
  store %struct.denode* %0, %struct.denode** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.buf** %2, %struct.buf*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.denode*, %struct.denode** %7, align 8
  %19 = getelementptr inbounds %struct.denode, %struct.denode* %18, i32 0, i32 3
  %20 = load %struct.msdosfsmount*, %struct.msdosfsmount** %19, align 8
  store %struct.msdosfsmount* %20, %struct.msdosfsmount** %16, align 8
  %21 = load %struct.denode*, %struct.denode** %7, align 8
  %22 = getelementptr inbounds %struct.denode, %struct.denode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MSDOSFSROOT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load %struct.denode*, %struct.denode** %7, align 8
  %28 = getelementptr inbounds %struct.denode, %struct.denode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATTR_DIRECTORY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOSPC, align 4
  store i32 %34, i32* %6, align 4
  br label %215

35:                                               ; preds = %26, %5
  %36 = load %struct.denode*, %struct.denode** %7, align 8
  %37 = getelementptr inbounds %struct.denode, %struct.denode* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* @FC_LASTFC, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FCE_EMPTY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load %struct.denode*, %struct.denode** %7, align 8
  %47 = getelementptr inbounds %struct.denode, %struct.denode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.denode*, %struct.denode** %7, align 8
  %52 = call i32 @pcbmap(%struct.denode* %51, i32 65535, i32 0, i64* %14, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @E2BIG, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %215

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %45, %35
  %60 = load %struct.denode*, %struct.denode** %7, align 8
  %61 = getelementptr inbounds %struct.denode, %struct.denode* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @FC_LASTFC, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.denode*, %struct.denode** %7, align 8
  %68 = getelementptr inbounds %struct.denode, %struct.denode* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @FC_NEXTTOLASTFC, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 %66, i64* %72, align 8
  %73 = load %struct.denode*, %struct.denode** %7, align 8
  %74 = getelementptr inbounds %struct.denode, %struct.denode* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i64, i64* @FC_LASTFC, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.denode*, %struct.denode** %7, align 8
  %81 = getelementptr inbounds %struct.denode, %struct.denode* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i64, i64* @FC_NEXTTOLASTFC, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i64 %79, i64* %85, align 8
  br label %86

86:                                               ; preds = %213, %59
  %87 = load i64, i64* %8, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %214

89:                                               ; preds = %86
  %90 = load %struct.denode*, %struct.denode** %7, align 8
  %91 = getelementptr inbounds %struct.denode, %struct.denode* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i64 0, i64* %14, align 8
  br label %104

95:                                               ; preds = %89
  %96 = load %struct.denode*, %struct.denode** %7, align 8
  %97 = getelementptr inbounds %struct.denode, %struct.denode* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64, i64* @FC_LASTFC, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %14, align 8
  br label %104

104:                                              ; preds = %95, %94
  %105 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* @CLUST_EOFE, align 4
  %109 = call i32 @clusteralloc(%struct.msdosfsmount* %105, i64 %106, i64 %107, i32 %108, i64* %14, i64* %15)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %215

114:                                              ; preds = %104
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %8, align 8
  %117 = sub nsw i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i64, i64* %14, align 8
  %122 = load i64*, i64** %10, align 8
  store i64 %121, i64* %122, align 8
  store i64* null, i64** %10, align 8
  br label %123

123:                                              ; preds = %120, %114
  %124 = load %struct.denode*, %struct.denode** %7, align 8
  %125 = getelementptr inbounds %struct.denode, %struct.denode* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.denode*, %struct.denode** %7, align 8
  %131 = getelementptr inbounds %struct.denode, %struct.denode* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  store i64 0, i64* %13, align 8
  br label %160

132:                                              ; preds = %123
  %133 = load i32, i32* @FAT_SET, align 4
  %134 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %135 = load %struct.denode*, %struct.denode** %7, align 8
  %136 = getelementptr inbounds %struct.denode, %struct.denode* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i64, i64* @FC_LASTFC, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @fatentry(i32 %133, %struct.msdosfsmount* %134, i64 %141, i32 0, i64 %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @clusterfree(%struct.msdosfsmount* %147, i64 %148, i32* null)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %6, align 4
  br label %215

151:                                              ; preds = %132
  %152 = load %struct.denode*, %struct.denode** %7, align 8
  %153 = getelementptr inbounds %struct.denode, %struct.denode* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i64, i64* @FC_LASTFC, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %151, %128
  %161 = load %struct.denode*, %struct.denode** %7, align 8
  %162 = load i64, i64* @FC_LASTFC, align 8
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %15, align 8
  %165 = add nsw i64 %163, %164
  %166 = sub nsw i64 %165, 1
  %167 = load i64, i64* %14, align 8
  %168 = load i64, i64* %15, align 8
  %169 = add nsw i64 %167, %168
  %170 = sub nsw i64 %169, 1
  %171 = call i32 @fc_setcache(%struct.denode* %161, i64 %162, i64 %166, i64 %170)
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @DE_CLEAR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %213

176:                                              ; preds = %160
  %177 = load %struct.denode*, %struct.denode** %7, align 8
  %178 = getelementptr inbounds %struct.denode, %struct.denode* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @ATTR_DIRECTORY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %211, %183
  %185 = load i64, i64* %15, align 8
  %186 = add nsw i64 %185, -1
  store i64 %186, i64* %15, align 8
  %187 = icmp sgt i64 %185, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %184
  %189 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %190 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %193 = load i64, i64* %14, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %14, align 8
  %195 = trunc i64 %193 to i32
  %196 = call i32 @cntobn(%struct.msdosfsmount* %192, i32 %195)
  %197 = load %struct.msdosfsmount*, %struct.msdosfsmount** %16, align 8
  %198 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.buf* @getblk(i32 %191, i32 %196, i32 %199, i32 0, i32 0, i32 0)
  store %struct.buf* %200, %struct.buf** %17, align 8
  %201 = load %struct.buf*, %struct.buf** %17, align 8
  %202 = call i32 @clrbuf(%struct.buf* %201)
  %203 = load %struct.buf**, %struct.buf*** %9, align 8
  %204 = icmp ne %struct.buf** %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %188
  %206 = load %struct.buf*, %struct.buf** %17, align 8
  %207 = load %struct.buf**, %struct.buf*** %9, align 8
  store %struct.buf* %206, %struct.buf** %207, align 8
  store %struct.buf** null, %struct.buf*** %9, align 8
  br label %211

208:                                              ; preds = %188
  %209 = load %struct.buf*, %struct.buf** %17, align 8
  %210 = call i32 @bdwrite(%struct.buf* %209)
  br label %211

211:                                              ; preds = %208, %205
  br label %184

212:                                              ; preds = %184
  br label %213

213:                                              ; preds = %212, %176, %160
  br label %86

214:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %215

215:                                              ; preds = %214, %146, %112, %56, %33
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @pcbmap(%struct.denode*, i32, i32, i64*, i32) #1

declare dso_local i32 @clusteralloc(%struct.msdosfsmount*, i64, i64, i32, i64*, i64*) #1

declare dso_local i32 @fatentry(i32, %struct.msdosfsmount*, i64, i32, i64) #1

declare dso_local i32 @clusterfree(%struct.msdosfsmount*, i64, i32*) #1

declare dso_local i32 @fc_setcache(%struct.denode*, i64, i64, i64) #1

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @clrbuf(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
