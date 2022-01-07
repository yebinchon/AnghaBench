; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_use_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vfsops.c_ffs_use_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfd = type { i64, i32, i64, %struct.buf*, %struct.ufsmount* }
%struct.buf = type { i32, i64 }
%struct.ufsmount = type { i32, i32, %struct.fs* }
%struct.fs = type { i64, i64, i32, i8*, i32, i64 }

@B_VALIDSUSPWRT = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i64 0, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@SBLOCK_UFS1 = common dso_local global i64 0, align 8
@FS_FLAGS_UPDATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"WARNING: %s: correcting fs_sblockloc from %jd to %d\0A\00", align 1
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@SBLOCK_UFS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32)* @ffs_use_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_use_bwrite(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.devfd*, align 8
  %11 = alloca %struct.ufsmount*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca %struct.fs*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.devfd*
  store %struct.devfd* %16, %struct.devfd** %10, align 8
  %17 = load %struct.devfd*, %struct.devfd** %10, align 8
  %18 = getelementptr inbounds %struct.devfd, %struct.devfd* %17, i32 0, i32 4
  %19 = load %struct.ufsmount*, %struct.ufsmount** %18, align 8
  store %struct.ufsmount* %19, %struct.ufsmount** %11, align 8
  %20 = load %struct.ufsmount*, %struct.ufsmount** %11, align 8
  %21 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %20, i32 0, i32 2
  %22 = load %struct.fs*, %struct.fs** %21, align 8
  store %struct.fs* %22, %struct.fs** %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.fs*, %struct.fs** %13, align 8
  %25 = getelementptr inbounds %struct.fs, %struct.fs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %4
  %29 = load %struct.ufsmount*, %struct.ufsmount** %11, align 8
  %30 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @btodb(i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.buf* @getblk(i32 %31, i32 %33, i32 %34, i32 0, i32 0, i32 0)
  store %struct.buf* %35, %struct.buf** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.buf*, %struct.buf** %12, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @bcopy(i8* %36, i64 %39, i32 %40)
  %42 = load %struct.devfd*, %struct.devfd** %10, align 8
  %43 = getelementptr inbounds %struct.devfd, %struct.devfd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load i32, i32* @B_VALIDSUSPWRT, align 4
  %48 = load %struct.buf*, %struct.buf** %12, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %28
  %53 = load %struct.devfd*, %struct.devfd** %10, align 8
  %54 = getelementptr inbounds %struct.devfd, %struct.devfd* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MNT_WAIT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.buf*, %struct.buf** %12, align 8
  %60 = call i32 @bawrite(%struct.buf* %59)
  br label %70

61:                                               ; preds = %52
  %62 = load %struct.buf*, %struct.buf** %12, align 8
  %63 = call i32 @bwrite(%struct.buf* %62)
  store i32 %63, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.devfd*, %struct.devfd** %10, align 8
  %68 = getelementptr inbounds %struct.devfd, %struct.devfd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %58
  store i32 0, i32* %5, align 4
  br label %215

71:                                               ; preds = %4
  %72 = load %struct.devfd*, %struct.devfd** %10, align 8
  %73 = getelementptr inbounds %struct.devfd, %struct.devfd* %72, i32 0, i32 3
  %74 = load %struct.buf*, %struct.buf** %73, align 8
  store %struct.buf* %74, %struct.buf** %12, align 8
  %75 = load %struct.devfd*, %struct.devfd** %10, align 8
  %76 = getelementptr inbounds %struct.devfd, %struct.devfd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load %struct.buf*, %struct.buf** %12, align 8
  %81 = call i32 @brelse(%struct.buf* %80)
  %82 = load %struct.devfd*, %struct.devfd** %10, align 8
  %83 = getelementptr inbounds %struct.devfd, %struct.devfd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %5, align 4
  br label %215

85:                                               ; preds = %71
  %86 = load %struct.fs*, %struct.fs** %13, align 8
  %87 = getelementptr inbounds %struct.fs, %struct.fs* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = load %struct.fs*, %struct.fs** %13, align 8
  %93 = getelementptr inbounds %struct.fs, %struct.fs* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SBLOCK_UFS1, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.fs*, %struct.fs** %13, align 8
  %99 = getelementptr inbounds %struct.fs, %struct.fs* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @FS_FLAGS_UPDATED, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load %struct.fs*, %struct.fs** %13, align 8
  %106 = getelementptr inbounds %struct.fs, %struct.fs* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.fs*, %struct.fs** %13, align 8
  %109 = getelementptr inbounds %struct.fs, %struct.fs* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SBLOCK_UFS1, align 8
  %112 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %107, i64 %110, i64 %111)
  %113 = load i64, i64* @SBLOCK_UFS1, align 8
  %114 = load %struct.fs*, %struct.fs** %13, align 8
  %115 = getelementptr inbounds %struct.fs, %struct.fs* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %104, %97, %91, %85
  %117 = load %struct.fs*, %struct.fs** %13, align 8
  %118 = getelementptr inbounds %struct.fs, %struct.fs* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load %struct.fs*, %struct.fs** %13, align 8
  %124 = getelementptr inbounds %struct.fs, %struct.fs* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SBLOCK_UFS2, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %122
  %129 = load %struct.fs*, %struct.fs** %13, align 8
  %130 = getelementptr inbounds %struct.fs, %struct.fs* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @FS_FLAGS_UPDATED, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.fs*, %struct.fs** %13, align 8
  %137 = getelementptr inbounds %struct.fs, %struct.fs* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.fs*, %struct.fs** %13, align 8
  %140 = getelementptr inbounds %struct.fs, %struct.fs* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SBLOCK_UFS2, align 8
  %143 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %138, i64 %141, i64 %142)
  %144 = load i64, i64* @SBLOCK_UFS2, align 8
  %145 = load %struct.fs*, %struct.fs** %13, align 8
  %146 = getelementptr inbounds %struct.fs, %struct.fs* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %135, %128, %122, %116
  %148 = load %struct.ufsmount*, %struct.ufsmount** %11, align 8
  %149 = getelementptr inbounds %struct.ufsmount, %struct.ufsmount* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @MOUNTEDSOFTDEP(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.ufsmount*, %struct.ufsmount** %11, align 8
  %155 = load %struct.buf*, %struct.buf** %12, align 8
  %156 = getelementptr inbounds %struct.buf, %struct.buf* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.fs*
  %159 = load %struct.buf*, %struct.buf** %12, align 8
  %160 = call i32 @softdep_setup_sbupdate(%struct.ufsmount* %154, %struct.fs* %158, %struct.buf* %159)
  br label %161

161:                                              ; preds = %153, %147
  %162 = load %struct.fs*, %struct.fs** %13, align 8
  %163 = bitcast %struct.fs* %162 to i8*
  %164 = load %struct.buf*, %struct.buf** %12, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.fs*, %struct.fs** %13, align 8
  %168 = getelementptr inbounds %struct.fs, %struct.fs* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = call i32 @bcopy(i8* %163, i64 %166, i32 %170)
  %172 = load %struct.buf*, %struct.buf** %12, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.fs*
  store %struct.fs* %175, %struct.fs** %13, align 8
  %176 = load %struct.fs*, %struct.fs** %13, align 8
  %177 = load %struct.ufsmount*, %struct.ufsmount** %11, align 8
  %178 = call i32 @ffs_oldfscompat_write(%struct.fs* %176, %struct.ufsmount* %177)
  %179 = load %struct.fs*, %struct.fs** %13, align 8
  %180 = call i32 @ffs_calc_sbhash(%struct.fs* %179)
  %181 = load %struct.fs*, %struct.fs** %13, align 8
  %182 = getelementptr inbounds %struct.fs, %struct.fs* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load %struct.devfd*, %struct.devfd** %10, align 8
  %184 = getelementptr inbounds %struct.devfd, %struct.devfd* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %161
  %188 = load i32, i32* @B_VALIDSUSPWRT, align 4
  %189 = load %struct.buf*, %struct.buf** %12, align 8
  %190 = getelementptr inbounds %struct.buf, %struct.buf* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %187, %161
  %194 = load %struct.devfd*, %struct.devfd** %10, align 8
  %195 = getelementptr inbounds %struct.devfd, %struct.devfd* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MNT_WAIT, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.buf*, %struct.buf** %12, align 8
  %201 = call i32 @bawrite(%struct.buf* %200)
  br label %211

202:                                              ; preds = %193
  %203 = load %struct.buf*, %struct.buf** %12, align 8
  %204 = call i32 @bwrite(%struct.buf* %203)
  store i32 %204, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.devfd*, %struct.devfd** %10, align 8
  %209 = getelementptr inbounds %struct.devfd, %struct.devfd* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %206, %202
  br label %211

211:                                              ; preds = %210, %199
  %212 = load %struct.devfd*, %struct.devfd** %10, align 8
  %213 = getelementptr inbounds %struct.devfd, %struct.devfd* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %79, %70
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i32 @bcopy(i8*, i64, i32) #1

declare dso_local i32 @bawrite(%struct.buf*) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64) #1

declare dso_local i64 @MOUNTEDSOFTDEP(i32) #1

declare dso_local i32 @softdep_setup_sbupdate(%struct.ufsmount*, %struct.fs*, %struct.buf*) #1

declare dso_local i32 @ffs_oldfscompat_write(%struct.fs*, %struct.ufsmount*) #1

declare dso_local i32 @ffs_calc_sbhash(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
