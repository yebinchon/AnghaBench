; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_detrunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_denode.c_detrunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i64, i32 }
%struct.ucred = type { i32 }
%struct.buf = type { i64 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"detrunc(): file %s, length %lu, flags %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"detrunc(): can't truncate root directory, clust %ld, offset %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"detrunc(): pcbmap fails %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"detrunc(): bread fails %d\0A\00", align 1
@IO_SYNC = common dso_local global i32 0, align 4
@DE_UPDATE = common dso_local global i32 0, align 4
@DE_MODIFIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"detrunc(): allerror %d, eofentry %lu\0A\00", align 1
@FAT_GET_AND_SET = common dso_local global i32 0, align 4
@CLUST_EOFE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"detrunc(): fatentry errors %d\0A\00", align 1
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
  %25 = getelementptr inbounds %struct.denode, %struct.denode* %24, i32 0, i32 8
  %26 = load %struct.msdosfsmount*, %struct.msdosfsmount** %25, align 8
  store %struct.msdosfsmount* %26, %struct.msdosfsmount** %18, align 8
  %27 = load %struct.denode*, %struct.denode** %6, align 8
  %28 = getelementptr inbounds %struct.denode, %struct.denode* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @MSDOSFS_DPRINTF(i8* %33)
  %35 = load %struct.denode*, %struct.denode** %6, align 8
  %36 = getelementptr inbounds %struct.denode, %struct.denode* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %4
  %40 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %41 = call i32 @FAT32(%struct.msdosfsmount* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load %struct.denode*, %struct.denode** %6, align 8
  %45 = getelementptr inbounds %struct.denode, %struct.denode* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.denode*, %struct.denode** %6, align 8
  %48 = getelementptr inbounds %struct.denode, %struct.denode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @MSDOSFS_DPRINTF(i8* %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %5, align 4
  br label %212

54:                                               ; preds = %39, %4
  %55 = load %struct.denode*, %struct.denode** %6, align 8
  %56 = getelementptr inbounds %struct.denode, %struct.denode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.denode*, %struct.denode** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ucred*, %struct.ucred** %9, align 8
  %64 = call i32 @deextend(%struct.denode* %61, i32 %62, %struct.ucred* %63)
  store i32 %64, i32* %5, align 4
  br label %212

65:                                               ; preds = %54
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.denode*, %struct.denode** %6, align 8
  %70 = getelementptr inbounds %struct.denode, %struct.denode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %13, align 4
  %72 = load %struct.denode*, %struct.denode** %6, align 8
  %73 = getelementptr inbounds %struct.denode, %struct.denode* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  store i32 -1, i32* %12, align 4
  br label %90

74:                                               ; preds = %65
  %75 = load %struct.denode*, %struct.denode** %6, align 8
  %76 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @de_clcount(%struct.msdosfsmount* %76, i32 %77)
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @pcbmap(%struct.denode* %75, i64 %79, i32 0, i32* %12, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @MSDOSFS_DPRINTF(i8* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %212

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.denode*, %struct.denode** %6, align 8
  %92 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @de_clcount(%struct.msdosfsmount* %92, i32 %93)
  %95 = call i32 @fc_purge(%struct.denode* %91, i64 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %98 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %96, %99
  store i32 %100, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %153

102:                                              ; preds = %90
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %102
  %106 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @cntobn(%struct.msdosfsmount* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %110 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %114 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @bread(i32 %111, i32 %112, i64 %115, i32 0, %struct.buf** %17)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %105
  %120 = load %struct.buf*, %struct.buf** %17, align 8
  %121 = call i32 @brelse(%struct.buf* %120)
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @MSDOSFS_DPRINTF(i8* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %5, align 4
  br label %212

127:                                              ; preds = %105
  %128 = load %struct.buf*, %struct.buf** %17, align 8
  %129 = getelementptr inbounds %struct.buf, %struct.buf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %135 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %136, %138
  %140 = call i32 @memset(i64 %133, i32 0, i64 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @IO_SYNC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %127
  %146 = load %struct.buf*, %struct.buf** %17, align 8
  %147 = call i32 @bwrite(%struct.buf* %146)
  br label %151

148:                                              ; preds = %127
  %149 = load %struct.buf*, %struct.buf** %17, align 8
  %150 = call i32 @bdwrite(%struct.buf* %149)
  br label %151

151:                                              ; preds = %148, %145
  br label %152

152:                                              ; preds = %151, %102
  br label %153

153:                                              ; preds = %152, %90
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.denode*, %struct.denode** %6, align 8
  %156 = getelementptr inbounds %struct.denode, %struct.denode* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %153
  %160 = load i32, i32* @DE_UPDATE, align 4
  %161 = load i32, i32* @DE_MODIFIED, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.denode*, %struct.denode** %6, align 8
  %164 = getelementptr inbounds %struct.denode, %struct.denode* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %153
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = call i32 @MSDOSFS_DPRINTF(i8* %171)
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %198

175:                                              ; preds = %167
  %176 = load i32, i32* @FAT_GET_AND_SET, align 4
  %177 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @CLUST_EOFE, align 4
  %180 = call i32 @fatentry(i32 %176, %struct.msdosfsmount* %177, i32 %178, i32* %13, i32 %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @MSDOSFS_DPRINTF(i8* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %5, align 4
  br label %212

189:                                              ; preds = %175
  %190 = load %struct.denode*, %struct.denode** %6, align 8
  %191 = load i32, i32* @FC_LASTFC, align 4
  %192 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sub nsw i32 %193, 1
  %195 = call i32 @de_cluster(%struct.msdosfsmount* %192, i32 %194)
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @fc_setcache(%struct.denode* %190, i32 %191, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %167
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @MSDOSFSEOF(%struct.msdosfsmount* %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load %struct.msdosfsmount*, %struct.msdosfsmount** %18, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @freeclusterchain(%struct.msdosfsmount* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %201, %198
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %183, %119, %83, %60, %43
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @MSDOSFS_DPRINTF(i8*) #1

declare dso_local i32 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @deextend(%struct.denode*, i32, %struct.ucred*) #1

declare dso_local i32 @pcbmap(%struct.denode*, i64, i32, i32*, i32) #1

declare dso_local i64 @de_clcount(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fc_purge(%struct.denode*, i64) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @bread(i32, i32, i64, i32, %struct.buf**) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @bdwrite(%struct.buf*) #1

declare dso_local i32 @fatentry(i32, %struct.msdosfsmount*, i32, i32*, i32) #1

declare dso_local i32 @fc_setcache(%struct.denode*, i32, i32, i32) #1

declare dso_local i32 @de_cluster(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @MSDOSFSEOF(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @freeclusterchain(%struct.msdosfsmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
