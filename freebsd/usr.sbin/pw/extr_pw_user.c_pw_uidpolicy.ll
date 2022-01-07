; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_uidpolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_uidpolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.userconf = type { i32, i32, i64 }
%struct.passwd = type { i64 }
%struct.bitmap = type { i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"uid `%ju' has already been allocated\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"unable to allocate a new uid - range fully used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.userconf*, i64)* @pw_uidpolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pw_uidpolicy(%struct.userconf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.userconf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca %struct.bitmap, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.bitmap, align 4
  store %struct.userconf* %0, %struct.userconf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.passwd* @GETPWUID(i64 %14)
  store %struct.passwd* %15, %struct.passwd** %6, align 8
  %16 = icmp ne %struct.passwd* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* @EX_DATAERR, align 4
  %22 = load %struct.passwd*, %struct.passwd** %6, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i8*, ...) @errx(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %17, %12
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %3, align 8
  br label %134

29:                                               ; preds = %2
  %30 = load %struct.userconf*, %struct.userconf** %4, align 8
  %31 = getelementptr inbounds %struct.userconf, %struct.userconf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.userconf*, %struct.userconf** %4, align 8
  %34 = getelementptr inbounds %struct.userconf, %struct.userconf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.userconf*, %struct.userconf** %4, align 8
  %39 = getelementptr inbounds %struct.userconf, %struct.userconf* %38, i32 0, i32 0
  store i32 1000, i32* %39, align 8
  %40 = load %struct.userconf*, %struct.userconf** %4, align 8
  %41 = getelementptr inbounds %struct.userconf, %struct.userconf* %40, i32 0, i32 1
  store i32 32000, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.userconf*, %struct.userconf** %4, align 8
  %44 = getelementptr inbounds %struct.userconf, %struct.userconf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.userconf*, %struct.userconf** %4, align 8
  %47 = getelementptr inbounds %struct.userconf, %struct.userconf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = add nsw i32 %49, 1
  %51 = call i32 @bm_alloc(i32 %50)
  %52 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = bitcast %struct.bitmap* %7 to i8*
  %54 = bitcast %struct.bitmap* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = call i32 (...) @SETPWENT()
  br label %56

56:                                               ; preds = %87, %42
  %57 = call %struct.passwd* (...) @GETPWENT()
  store %struct.passwd* %57, %struct.passwd** %6, align 8
  %58 = icmp ne %struct.passwd* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %56
  %60 = load %struct.passwd*, %struct.passwd** %6, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.userconf*, %struct.userconf** %4, align 8
  %64 = getelementptr inbounds %struct.userconf, %struct.userconf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp sge i64 %62, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.passwd*, %struct.passwd** %6, align 8
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.userconf*, %struct.userconf** %4, align 8
  %73 = getelementptr inbounds %struct.userconf, %struct.userconf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp sle i64 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.passwd*, %struct.passwd** %6, align 8
  %79 = getelementptr inbounds %struct.passwd, %struct.passwd* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.userconf*, %struct.userconf** %4, align 8
  %82 = getelementptr inbounds %struct.userconf, %struct.userconf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %80, %84
  %86 = call i32 @bm_setbit(%struct.bitmap* %7, i64 %85)
  br label %87

87:                                               ; preds = %77, %68, %59
  br label %56

88:                                               ; preds = %56
  %89 = call i32 (...) @ENDPWENT()
  %90 = load %struct.userconf*, %struct.userconf** %4, align 8
  %91 = getelementptr inbounds %struct.userconf, %struct.userconf* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %88
  %95 = call i64 @bm_lastset(%struct.bitmap* %7)
  %96 = load %struct.userconf*, %struct.userconf** %4, align 8
  %97 = getelementptr inbounds %struct.userconf, %struct.userconf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %95, %99
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load %struct.userconf*, %struct.userconf** %4, align 8
  %103 = getelementptr inbounds %struct.userconf, %struct.userconf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp sgt i64 %101, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %94, %88
  %108 = call i64 @bm_firstunset(%struct.bitmap* %7)
  %109 = load %struct.userconf*, %struct.userconf** %4, align 8
  %110 = getelementptr inbounds %struct.userconf, %struct.userconf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  store i64 %113, i64* %8, align 8
  br label %114

114:                                              ; preds = %107, %94
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.userconf*, %struct.userconf** %4, align 8
  %117 = getelementptr inbounds %struct.userconf, %struct.userconf* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %115, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %114
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.userconf*, %struct.userconf** %4, align 8
  %124 = getelementptr inbounds %struct.userconf, %struct.userconf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp sgt i64 %122, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %114
  %129 = load i32, i32* @EX_SOFTWARE, align 4
  %130 = call i32 (i32, i8*, ...) @errx(i32 %129, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  %132 = call i32 @bm_dealloc(%struct.bitmap* %7)
  %133 = load i64, i64* %8, align 8
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %131, %27
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local %struct.passwd* @GETPWUID(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @bm_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SETPWENT(...) #1

declare dso_local %struct.passwd* @GETPWENT(...) #1

declare dso_local i32 @bm_setbit(%struct.bitmap*, i64) #1

declare dso_local i32 @ENDPWENT(...) #1

declare dso_local i64 @bm_lastset(%struct.bitmap*) #1

declare dso_local i64 @bm_firstunset(%struct.bitmap*) #1

declare dso_local i32 @bm_dealloc(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
