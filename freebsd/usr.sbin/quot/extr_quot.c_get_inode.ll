; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_get_inode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/quot/extr_quot.c_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cg = type { i32 }
%union.dinode = type { i32 }
%struct.fs = type { i64, i64, i64, i64 }
%struct.ufs2_dinode = type { i32 }
%struct.ufs1_dinode = type { i32 }

@get_inode.ipbuf = internal global %struct.cg* null, align 8
@get_inode.cgp = internal global %struct.cg* null, align 8
@get_inode.last = internal global i64 0, align 8
@get_inode.cg = internal global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"allocate cg\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"lseek cg\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"read cg\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cg has bad magic\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"allocate inodes\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"read inodes\00", align 1
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.dinode* (i32, %struct.fs*, i64)* @get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.dinode* @get_inode(i32 %0, %struct.fs* %1, i64 %2) #0 {
  %4 = alloca %union.dinode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ufs2_dinode*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.fs* %1, %struct.fs** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %13 = icmp ne %struct.cg* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %16 = call i32 @free(%struct.cg* %15)
  store %struct.cg* null, %struct.cg** @get_inode.ipbuf, align 8
  %17 = load %struct.fs*, %struct.fs** %6, align 8
  %18 = icmp ne %struct.fs* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.fs*, %struct.fs** %6, align 8
  %21 = getelementptr inbounds %struct.fs, %struct.fs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %27 = call i32 @free(%struct.cg* %26)
  store %struct.cg* null, %struct.cg** @get_inode.cgp, align 8
  br label %28

28:                                               ; preds = %25, %19, %14
  br label %29

29:                                               ; preds = %28, %11
  store %union.dinode* null, %union.dinode** %4, align 8
  br label %181

30:                                               ; preds = %3
  %31 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %32 = icmp ne %struct.cg* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @get_inode.last, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @get_inode.last, align 8
  %40 = load %struct.fs*, %struct.fs** %6, align 8
  %41 = call i64 @INOCNT(%struct.fs* %40)
  %42 = add i64 %39, %41
  %43 = icmp uge i64 %38, %42
  br i1 %43, label %44, label %143

44:                                               ; preds = %37, %33, %30
  %45 = load %struct.fs*, %struct.fs** %6, align 8
  %46 = getelementptr inbounds %struct.fs, %struct.fs* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %52 = icmp ne %struct.cg* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @get_inode.cg, align 4
  %55 = load %struct.fs*, %struct.fs** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ino_to_cg(%struct.fs* %55, i64 %56)
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %53, %50
  %60 = load %struct.fs*, %struct.fs** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @ino_to_cg(%struct.fs* %60, i64 %61)
  store i32 %62, i32* @get_inode.cg, align 4
  %63 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %64 = icmp ne %struct.cg* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %59
  %66 = load %struct.fs*, %struct.fs** %6, align 8
  %67 = getelementptr inbounds %struct.fs, %struct.fs* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.cg* @malloc(i64 %68)
  store %struct.cg* %69, %struct.cg** @get_inode.cgp, align 8
  %70 = icmp ne %struct.cg* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65, %59
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.fs*, %struct.fs** %6, align 8
  %76 = load i32, i32* @get_inode.cg, align 4
  %77 = call i64 @cgtod(%struct.fs* %75, i32 %76)
  %78 = load %struct.fs*, %struct.fs** %6, align 8
  %79 = getelementptr inbounds %struct.fs, %struct.fs* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = shl i64 %77, %80
  %82 = call i64 @lseek(i32 %74, i64 %81, i32 0)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %89 = load %struct.fs*, %struct.fs** %6, align 8
  %90 = getelementptr inbounds %struct.fs, %struct.fs* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @read(i32 %87, %struct.cg* %88, i64 %91)
  %93 = load %struct.fs*, %struct.fs** %6, align 8
  %94 = getelementptr inbounds %struct.fs, %struct.fs* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %86
  %100 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %101 = call i32 @cg_chkmagic(%struct.cg* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %53, %44
  %107 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %108 = icmp ne %struct.cg* %107, null
  br i1 %108, label %116, label %109

109:                                              ; preds = %106
  %110 = load %struct.fs*, %struct.fs** %6, align 8
  %111 = call i64 @INOSZ(%struct.fs* %110)
  %112 = call %struct.cg* @malloc(i64 %111)
  store %struct.cg* %112, %struct.cg** @get_inode.ipbuf, align 8
  %113 = icmp ne %struct.cg* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109, %106
  %117 = load i64, i64* %7, align 8
  %118 = load %struct.fs*, %struct.fs** %6, align 8
  %119 = call i64 @INOCNT(%struct.fs* %118)
  %120 = call i64 @rounddown(i64 %117, i64 %119)
  store i64 %120, i64* @get_inode.last, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.fs*, %struct.fs** %6, align 8
  %123 = load i64, i64* @get_inode.last, align 8
  %124 = call i64 @ino_to_fsba(%struct.fs* %122, i64 %123)
  %125 = load %struct.fs*, %struct.fs** %6, align 8
  %126 = getelementptr inbounds %struct.fs, %struct.fs* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = shl i64 %124, %127
  %129 = call i64 @lseek(i32 %121, i64 %128, i32 0)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %134 = load %struct.fs*, %struct.fs** %6, align 8
  %135 = call i64 @INOSZ(%struct.fs* %134)
  %136 = call i64 @read(i32 %132, %struct.cg* %133, i64 %135)
  %137 = load %struct.fs*, %struct.fs** %6, align 8
  %138 = call i64 @INOSZ(%struct.fs* %137)
  %139 = icmp ne i64 %136, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %131, %116
  %141 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %131
  br label %143

143:                                              ; preds = %142, %37
  %144 = load %struct.fs*, %struct.fs** %6, align 8
  %145 = getelementptr inbounds %struct.fs, %struct.fs* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %151 = bitcast %struct.cg* %150 to %struct.ufs1_dinode*
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.fs*, %struct.fs** %6, align 8
  %154 = call i64 @INOCNT(%struct.fs* %153)
  %155 = urem i64 %152, %154
  %156 = getelementptr inbounds %struct.ufs1_dinode, %struct.ufs1_dinode* %151, i64 %155
  %157 = bitcast %struct.ufs1_dinode* %156 to %union.dinode*
  store %union.dinode* %157, %union.dinode** %4, align 8
  br label %181

158:                                              ; preds = %143
  %159 = load %struct.cg*, %struct.cg** @get_inode.ipbuf, align 8
  %160 = bitcast %struct.cg* %159 to %struct.ufs2_dinode*
  %161 = load i64, i64* %7, align 8
  %162 = load %struct.fs*, %struct.fs** %6, align 8
  %163 = call i64 @INOCNT(%struct.fs* %162)
  %164 = urem i64 %161, %163
  %165 = getelementptr inbounds %struct.ufs2_dinode, %struct.ufs2_dinode* %160, i64 %164
  store %struct.ufs2_dinode* %165, %struct.ufs2_dinode** %8, align 8
  %166 = load %struct.cg*, %struct.cg** @get_inode.cgp, align 8
  %167 = call i32 @cg_inosused(%struct.cg* %166)
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.fs*, %struct.fs** %6, align 8
  %170 = getelementptr inbounds %struct.fs, %struct.fs* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = urem i64 %168, %171
  %173 = call i64 @isclr(i32 %167, i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %158
  %176 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %8, align 8
  %177 = call i32 @bzero(%struct.ufs2_dinode* %176, i32 4)
  br label %178

178:                                              ; preds = %175, %158
  %179 = load %struct.ufs2_dinode*, %struct.ufs2_dinode** %8, align 8
  %180 = bitcast %struct.ufs2_dinode* %179 to %union.dinode*
  store %union.dinode* %180, %union.dinode** %4, align 8
  br label %181

181:                                              ; preds = %178, %149, %29
  %182 = load %union.dinode*, %union.dinode** %4, align 8
  ret %union.dinode* %182
}

declare dso_local i32 @free(%struct.cg*) #1

declare dso_local i64 @INOCNT(%struct.fs*) #1

declare dso_local i32 @ino_to_cg(%struct.fs*, i64) #1

declare dso_local %struct.cg* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @cgtod(%struct.fs*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @read(i32, %struct.cg*, i64) #1

declare dso_local i32 @cg_chkmagic(%struct.cg*) #1

declare dso_local i64 @INOSZ(%struct.fs*) #1

declare dso_local i64 @rounddown(i64, i64) #1

declare dso_local i64 @ino_to_fsba(%struct.fs*, i64) #1

declare dso_local i64 @isclr(i32, i64) #1

declare dso_local i32 @cg_inosused(%struct.cg*) #1

declare dso_local i32 @bzero(%struct.ufs2_dinode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
