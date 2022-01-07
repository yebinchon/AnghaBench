; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_pdb.c_pacct_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_pdb.c_pacct_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdinfo = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.cmdinfo* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"***other\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"**junk**\00", align 1
@sa_cmp = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DB_BTREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't sort process accounting stats\00", align 1
@pacct_db = common dso_local global i32* null, align 8
@R_FIRST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"retrieving process accounting stats\00", align 1
@vflag = common dso_local global i64 0, align 8
@cutoff = common dso_local global i32 0, align 4
@fflag = common dso_local global i64 0, align 8
@aflag = common dso_local global i32 0, align 4
@CI_UNPRINTABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"sorting process accounting stats\00", align 1
@R_NEXT = common dso_local global i32 0, align 4
@rflag = common dso_local global i64 0, align 8
@R_LAST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"retrieving process accounting report\00", align 1
@R_PREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pacct_print() #0 {
  %1 = alloca %struct.cmdinfo, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cmdinfo*, align 8
  %7 = alloca %struct.cmdinfo, align 4
  %8 = alloca %struct.cmdinfo, align 4
  %9 = alloca %struct.cmdinfo, align 4
  %10 = alloca %struct.cmdinfo, align 4
  %11 = alloca i32, align 4
  %12 = call i32 @bzero(%struct.cmdinfo* %8, i32 16)
  %13 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %8, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @bzero(%struct.cmdinfo* %9, i32 16)
  %17 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @bzero(%struct.cmdinfo* %10, i32 16)
  %21 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %10, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @bzero(%struct.cmdinfo* %1, i32 16)
  %25 = load i32, i32* @sa_cmp, align 4
  %26 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %1, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = load i32, i32* @DB_BTREE, align 4
  %29 = call i32* @dbopen(i32* null, i32 %27, i32 0, i32 %28, %struct.cmdinfo* %1)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %0
  %33 = call i32 @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %173

34:                                               ; preds = %0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store %struct.cmdinfo* null, %struct.cmdinfo** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32*, i32** @pacct_db, align 8
  %38 = load i32, i32* @R_FIRST, align 4
  %39 = call i32 @DB_SEQ(i32* %37, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %34
  br label %45

45:                                               ; preds = %100, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %50 = load %struct.cmdinfo*, %struct.cmdinfo** %49, align 8
  store %struct.cmdinfo* %50, %struct.cmdinfo** %6, align 8
  %51 = load %struct.cmdinfo*, %struct.cmdinfo** %6, align 8
  %52 = call i32 @bcopy(%struct.cmdinfo* %51, %struct.cmdinfo* %7, i32 16)
  %53 = call i32 @add_ci(%struct.cmdinfo* %7, %struct.cmdinfo* %8)
  %54 = load i64, i64* @vflag, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @cutoff, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i64, i64* @fflag, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = call i64 @check_junk(%struct.cmdinfo* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %61
  %68 = call i32 @add_ci(%struct.cmdinfo* %7, %struct.cmdinfo* %10)
  br label %92

69:                                               ; preds = %64, %56, %48
  %70 = load i32, i32* @aflag, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CI_UNPRINTABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %72
  %83 = call i32 @add_ci(%struct.cmdinfo* %7, %struct.cmdinfo* %9)
  br label %92

84:                                               ; preds = %78, %69
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @DB_PUT(i32* %85, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 0)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %82, %67
  %93 = load i32*, i32** @pacct_db, align 8
  %94 = load i32, i32* @R_NEXT, align 4
  %95 = call i32 @DB_SEQ(i32* %93, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %92
  br label %45

101:                                              ; preds = %45
  %102 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %10, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store %struct.cmdinfo* %10, %struct.cmdinfo** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 16, i32* %107, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @DB_PUT(i32* %108, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 0)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %105
  br label %115

115:                                              ; preds = %114, %101
  %116 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store %struct.cmdinfo* %9, %struct.cmdinfo** %120, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 16, i32* %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @DB_PUT(i32* %122, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 0)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %119
  br label %129

129:                                              ; preds = %128, %115
  %130 = call i32 @print_ci(%struct.cmdinfo* %8, %struct.cmdinfo* %8)
  %131 = load i32*, i32** %5, align 8
  %132 = load i64, i64* @rflag, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @R_FIRST, align 4
  br label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @R_LAST, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = call i32 @DB_SEQ(i32* %131, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %138
  br label %146

146:                                              ; preds = %169, %145
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %151 = load %struct.cmdinfo*, %struct.cmdinfo** %150, align 8
  store %struct.cmdinfo* %151, %struct.cmdinfo** %6, align 8
  %152 = load %struct.cmdinfo*, %struct.cmdinfo** %6, align 8
  %153 = call i32 @bcopy(%struct.cmdinfo* %152, %struct.cmdinfo* %7, i32 16)
  %154 = call i32 @print_ci(%struct.cmdinfo* %7, %struct.cmdinfo* %8)
  %155 = load i32*, i32** %5, align 8
  %156 = load i64, i64* @rflag, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %149
  %159 = load i32, i32* @R_NEXT, align 4
  br label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @R_PREV, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = call i32 @DB_SEQ(i32* %155, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %162
  br label %146

170:                                              ; preds = %146
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @DB_CLOSE(i32* %171)
  br label %173

173:                                              ; preds = %170, %32
  ret void
}

declare dso_local i32 @bzero(%struct.cmdinfo*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @dbopen(i32*, i32, i32, i32, %struct.cmdinfo*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @DB_SEQ(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @bcopy(%struct.cmdinfo*, %struct.cmdinfo*, i32) #1

declare dso_local i32 @add_ci(%struct.cmdinfo*, %struct.cmdinfo*) #1

declare dso_local i64 @check_junk(%struct.cmdinfo*) #1

declare dso_local i32 @DB_PUT(i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_ci(%struct.cmdinfo*, %struct.cmdinfo*) #1

declare dso_local i32 @DB_CLOSE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
