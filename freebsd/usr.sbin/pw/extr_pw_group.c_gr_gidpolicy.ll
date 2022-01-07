; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_gr_gidpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_gr_gidpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.userconf = type { i32, i32, i64 }
%struct.group = type { i32 }
%struct.bitmap = type { i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"gid `%ju' has already been allocated\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to allocate a new gid - range fully used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.userconf*, i64)* @gr_gidpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gr_gidpolicy(%struct.userconf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.userconf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.bitmap, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bitmap, align 4
  store %struct.userconf* %0, %struct.userconf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.group* @GETGRGID(i64 %14)
  store %struct.group* %15, %struct.group** %6, align 8
  %16 = icmp ne %struct.group* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @EX_DATAERR, align 4
  %22 = load %struct.group*, %struct.group** %6, align 8
  %23 = getelementptr inbounds %struct.group, %struct.group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @errx(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %17, %12
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %3, align 8
  br label %142

28:                                               ; preds = %2
  %29 = load %struct.userconf*, %struct.userconf** %4, align 8
  %30 = getelementptr inbounds %struct.userconf, %struct.userconf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.userconf*, %struct.userconf** %4, align 8
  %33 = getelementptr inbounds %struct.userconf, %struct.userconf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.userconf*, %struct.userconf** %4, align 8
  %38 = getelementptr inbounds %struct.userconf, %struct.userconf* %37, i32 0, i32 0
  store i32 1000, i32* %38, align 8
  %39 = load %struct.userconf*, %struct.userconf** %4, align 8
  %40 = getelementptr inbounds %struct.userconf, %struct.userconf* %39, i32 0, i32 1
  store i32 32000, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.userconf*, %struct.userconf** %4, align 8
  %43 = getelementptr inbounds %struct.userconf, %struct.userconf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.userconf*, %struct.userconf** %4, align 8
  %46 = getelementptr inbounds %struct.userconf, %struct.userconf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = add nsw i32 %48, 1
  %50 = call i32 @bm_alloc(i32 %49)
  %51 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.bitmap* %7 to i8*
  %53 = bitcast %struct.bitmap* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = call i32 (...) @SETGRENT()
  br label %55

55:                                               ; preds = %87, %41
  %56 = call %struct.group* (...) @GETGRENT()
  store %struct.group* %56, %struct.group** %6, align 8
  %57 = icmp ne %struct.group* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load %struct.group*, %struct.group** %6, align 8
  %60 = getelementptr inbounds %struct.group, %struct.group* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.userconf*, %struct.userconf** %4, align 8
  %64 = getelementptr inbounds %struct.userconf, %struct.userconf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp sge i64 %62, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %58
  %69 = load %struct.group*, %struct.group** %6, align 8
  %70 = getelementptr inbounds %struct.group, %struct.group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.userconf*, %struct.userconf** %4, align 8
  %74 = getelementptr inbounds %struct.userconf, %struct.userconf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sle i64 %72, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load %struct.group*, %struct.group** %6, align 8
  %80 = getelementptr inbounds %struct.group, %struct.group* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.userconf*, %struct.userconf** %4, align 8
  %83 = getelementptr inbounds %struct.userconf, %struct.userconf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = call i32 @bm_setbit(%struct.bitmap* %7, i32 %85)
  br label %87

87:                                               ; preds = %78, %68, %58
  br label %55

88:                                               ; preds = %55
  %89 = call i32 (...) @ENDGRENT()
  %90 = load %struct.userconf*, %struct.userconf** %4, align 8
  %91 = getelementptr inbounds %struct.userconf, %struct.userconf* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = call i32 @bm_firstunset(%struct.bitmap* %7)
  %96 = load %struct.userconf*, %struct.userconf** %4, align 8
  %97 = getelementptr inbounds %struct.userconf, %struct.userconf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %8, align 8
  br label %122

101:                                              ; preds = %88
  %102 = call i64 @bm_lastset(%struct.bitmap* %7)
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @bm_isset(%struct.bitmap* %7, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %101
  %108 = load %struct.userconf*, %struct.userconf** %4, align 8
  %109 = getelementptr inbounds %struct.userconf, %struct.userconf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %8, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %8, align 8
  br label %121

114:                                              ; preds = %101
  %115 = call i32 @bm_firstunset(%struct.bitmap* %7)
  %116 = load %struct.userconf*, %struct.userconf** %4, align 8
  %117 = getelementptr inbounds %struct.userconf, %struct.userconf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %94
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.userconf*, %struct.userconf** %4, align 8
  %125 = getelementptr inbounds %struct.userconf, %struct.userconf* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %123, %127
  br i1 %128, label %136, label %129

129:                                              ; preds = %122
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.userconf*, %struct.userconf** %4, align 8
  %132 = getelementptr inbounds %struct.userconf, %struct.userconf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp sgt i64 %130, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129, %122
  %137 = load i32, i32* @EX_SOFTWARE, align 4
  %138 = call i32 (i32, i8*, ...) @errx(i32 %137, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %129
  %140 = call i32 @bm_dealloc(%struct.bitmap* %7)
  %141 = load i64, i64* %8, align 8
  store i64 %141, i64* %3, align 8
  br label %142

142:                                              ; preds = %139, %26
  %143 = load i64, i64* %3, align 8
  ret i64 %143
}

declare dso_local %struct.group* @GETGRGID(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @bm_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SETGRENT(...) #1

declare dso_local %struct.group* @GETGRENT(...) #1

declare dso_local i32 @bm_setbit(%struct.bitmap*, i32) #1

declare dso_local i32 @ENDGRENT(...) #1

declare dso_local i32 @bm_firstunset(%struct.bitmap*) #1

declare dso_local i64 @bm_lastset(%struct.bitmap*) #1

declare dso_local i32 @bm_isset(%struct.bitmap*, i64) #1

declare dso_local i32 @bm_dealloc(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
