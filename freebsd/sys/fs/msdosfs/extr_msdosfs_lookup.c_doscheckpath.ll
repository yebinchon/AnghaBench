; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_doscheckpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_doscheckpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.denode = type { i32, i32, %struct.msdosfsmount* }
%struct.msdosfsmount = type { i32, i32, i32 }
%struct.direntry = type { i32, i32, i32, i32 }
%struct.buf = type { i64 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MSDOSFSROOT = common dso_local global i32 0, align 4
@NOCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"..         \00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doscheckpath(%struct.denode* %0, %struct.denode* %1) #0 {
  %3 = alloca %struct.denode*, align 8
  %4 = alloca %struct.denode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msdosfsmount*, align 8
  %7 = alloca %struct.direntry*, align 8
  %8 = alloca %struct.denode*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i32, align 4
  store %struct.denode* %0, %struct.denode** %3, align 8
  store %struct.denode* %1, %struct.denode** %4, align 8
  store %struct.buf* null, %struct.buf** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.denode*, %struct.denode** %4, align 8
  store %struct.denode* %11, %struct.denode** %8, align 8
  %12 = load %struct.denode*, %struct.denode** %4, align 8
  %13 = getelementptr inbounds %struct.denode, %struct.denode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ATTR_DIRECTORY, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.denode*, %struct.denode** %3, align 8
  %20 = getelementptr inbounds %struct.denode, %struct.denode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_DIRECTORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @ENOTDIR, align 4
  store i32 %26, i32* %10, align 4
  br label %161

27:                                               ; preds = %18
  %28 = load %struct.denode*, %struct.denode** %8, align 8
  %29 = getelementptr inbounds %struct.denode, %struct.denode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.denode*, %struct.denode** %3, align 8
  %32 = getelementptr inbounds %struct.denode, %struct.denode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EEXIST, align 4
  store i32 %36, i32* %10, align 4
  br label %161

37:                                               ; preds = %27
  %38 = load %struct.denode*, %struct.denode** %8, align 8
  %39 = getelementptr inbounds %struct.denode, %struct.denode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSDOSFSROOT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %161

44:                                               ; preds = %37
  %45 = load %struct.denode*, %struct.denode** %8, align 8
  %46 = getelementptr inbounds %struct.denode, %struct.denode* %45, i32 0, i32 2
  %47 = load %struct.msdosfsmount*, %struct.msdosfsmount** %46, align 8
  store %struct.msdosfsmount* %47, %struct.msdosfsmount** %6, align 8
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %49 = call i64 @FAT32(%struct.msdosfsmount* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.denode*, %struct.denode** %8, align 8
  %53 = getelementptr inbounds %struct.denode, %struct.denode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %56 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %161

60:                                               ; preds = %51, %44
  br label %61

61:                                               ; preds = %159, %60
  %62 = load %struct.denode*, %struct.denode** %8, align 8
  %63 = getelementptr inbounds %struct.denode, %struct.denode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATTR_DIRECTORY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOTDIR, align 4
  store i32 %69, i32* %10, align 4
  br label %160

70:                                               ; preds = %61
  %71 = load %struct.denode*, %struct.denode** %8, align 8
  %72 = getelementptr inbounds %struct.denode, %struct.denode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  %74 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %75 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @cntobn(%struct.msdosfsmount* %77, i32 %78)
  %80 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %81 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NOCRED, align 4
  %84 = call i32 @bread(i32 %76, i32 %79, i32 %82, i32 %83, %struct.buf** %9)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %160

88:                                               ; preds = %70
  %89 = load %struct.buf*, %struct.buf** %9, align 8
  %90 = getelementptr inbounds %struct.buf, %struct.buf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.direntry*
  %93 = getelementptr inbounds %struct.direntry, %struct.direntry* %92, i64 1
  store %struct.direntry* %93, %struct.direntry** %7, align 8
  %94 = load %struct.direntry*, %struct.direntry** %7, align 8
  %95 = getelementptr inbounds %struct.direntry, %struct.direntry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATTR_DIRECTORY, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %88
  %101 = load %struct.direntry*, %struct.direntry** %7, align 8
  %102 = getelementptr inbounds %struct.direntry, %struct.direntry* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @bcmp(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100, %88
  %107 = load i32, i32* @ENOTDIR, align 4
  store i32 %107, i32* %10, align 4
  br label %160

108:                                              ; preds = %100
  %109 = load %struct.direntry*, %struct.direntry** %7, align 8
  %110 = getelementptr inbounds %struct.direntry, %struct.direntry* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @getushort(i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %114 = call i64 @FAT32(%struct.msdosfsmount* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.direntry*, %struct.direntry** %7, align 8
  %118 = getelementptr inbounds %struct.direntry, %struct.direntry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @getushort(i32 %119)
  %121 = shl i32 %120, 16
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %116, %108
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.denode*, %struct.denode** %3, align 8
  %127 = getelementptr inbounds %struct.denode, %struct.denode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %10, align 4
  br label %160

132:                                              ; preds = %124
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @MSDOSFSROOT, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %160

137:                                              ; preds = %132
  %138 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %139 = call i64 @FAT32(%struct.msdosfsmount* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %5, align 4
  %143 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %144 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %160

148:                                              ; preds = %141, %137
  %149 = load %struct.denode*, %struct.denode** %8, align 8
  %150 = call i32 @DETOV(%struct.denode* %149)
  %151 = call i32 @vput(i32 %150)
  %152 = load %struct.buf*, %struct.buf** %9, align 8
  %153 = call i32 @brelse(%struct.buf* %152)
  store %struct.buf* null, %struct.buf** %9, align 8
  %154 = load %struct.msdosfsmount*, %struct.msdosfsmount** %6, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @deget(%struct.msdosfsmount* %154, i32 %155, i32 0, %struct.denode** %8)
  store i32 %156, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %160

159:                                              ; preds = %148
  br label %61

160:                                              ; preds = %158, %147, %136, %130, %106, %87, %68
  br label %161

161:                                              ; preds = %160, %59, %43, %35, %25
  %162 = load %struct.buf*, %struct.buf** %9, align 8
  %163 = icmp ne %struct.buf* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.buf*, %struct.buf** %9, align 8
  %166 = call i32 @brelse(%struct.buf* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.denode*, %struct.denode** %8, align 8
  %169 = icmp ne %struct.denode* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct.denode*, %struct.denode** %8, align 8
  %172 = call i32 @DETOV(%struct.denode* %171)
  %173 = call i32 @vput(i32 %172)
  br label %174

174:                                              ; preds = %170, %167
  %175 = load i32, i32* %10, align 4
  ret i32 %175
}

declare dso_local i64 @FAT32(%struct.msdosfsmount*) #1

declare dso_local i32 @bread(i32, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @cntobn(%struct.msdosfsmount*, i32) #1

declare dso_local i64 @bcmp(i32, i8*, i32) #1

declare dso_local i32 @getushort(i32) #1

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @DETOV(%struct.denode*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
