; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd64.c_g_part_bsd64_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd64_uuid_alias = type { i64, i32, i32* }
%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_bsd64_entry = type { i64, i32 }

@FS_OTHER = common dso_local global i64 0, align 8
@dfbsd_alias_match = common dso_local global %struct.bsd64_uuid_alias* null, align 8
@fbsd_alias_match = common dso_local global %struct.bsd64_uuid_alias* null, align 8
@bsd64_uuid_unused = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"!%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.g_part_table*, %struct.g_part_entry*, i8*, i64)* @g_part_bsd64_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g_part_bsd64_type(%struct.g_part_table* %0, %struct.g_part_entry* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.g_part_bsd64_entry*, align 8
  %11 = alloca %struct.bsd64_uuid_alias*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %6, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %13 = bitcast %struct.g_part_entry* %12 to %struct.g_part_bsd64_entry*
  store %struct.g_part_bsd64_entry* %13, %struct.g_part_bsd64_entry** %10, align 8
  %14 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %15 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FS_OTHER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %4
  %20 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** @dfbsd_alias_match, align 8
  %21 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %20, i64 0
  store %struct.bsd64_uuid_alias* %21, %struct.bsd64_uuid_alias** %11, align 8
  br label %22

22:                                               ; preds = %41, %19
  %23 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %24 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %29 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %32 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %37 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @g_part_alias_name(i32 %38)
  store i8* %39, i8** %5, align 8
  br label %120

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %43 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %42, i32 1
  store %struct.bsd64_uuid_alias* %43, %struct.bsd64_uuid_alias** %11, align 8
  br label %22

44:                                               ; preds = %22
  br label %96

45:                                               ; preds = %4
  %46 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** @fbsd_alias_match, align 8
  %47 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %46, i64 0
  store %struct.bsd64_uuid_alias* %47, %struct.bsd64_uuid_alias** %11, align 8
  br label %48

48:                                               ; preds = %67, %45
  %49 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %50 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %55 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %58 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %57, i32 0, i32 1
  %59 = call i64 @EQUUID(i32* %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %63 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @g_part_alias_name(i32 %64)
  store i8* %65, i8** %5, align 8
  br label %120

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %69 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %68, i32 1
  store %struct.bsd64_uuid_alias* %69, %struct.bsd64_uuid_alias** %11, align 8
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** @dfbsd_alias_match, align 8
  %72 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %71, i64 0
  store %struct.bsd64_uuid_alias* %72, %struct.bsd64_uuid_alias** %11, align 8
  br label %73

73:                                               ; preds = %92, %70
  %74 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %75 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %80 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %83 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %82, i32 0, i32 1
  %84 = call i64 @EQUUID(i32* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %88 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @g_part_alias_name(i32 %89)
  store i8* %90, i8** %5, align 8
  br label %120

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.bsd64_uuid_alias*, %struct.bsd64_uuid_alias** %11, align 8
  %94 = getelementptr inbounds %struct.bsd64_uuid_alias, %struct.bsd64_uuid_alias* %93, i32 1
  store %struct.bsd64_uuid_alias* %94, %struct.bsd64_uuid_alias** %11, align 8
  br label %73

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %44
  %97 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %98 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %97, i32 0, i32 1
  %99 = call i64 @EQUUID(i32* @bsd64_uuid_unused, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %105 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @snprintf(i8* %102, i64 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %106)
  br label %118

108:                                              ; preds = %96
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 33, i8* %110, align 1
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i64, i64* %9, align 8
  %114 = sub i64 %113, 1
  %115 = load %struct.g_part_bsd64_entry*, %struct.g_part_bsd64_entry** %10, align 8
  %116 = getelementptr inbounds %struct.g_part_bsd64_entry, %struct.g_part_bsd64_entry* %115, i32 0, i32 1
  %117 = call i32 @snprintf_uuid(i8* %112, i64 %114, i32* %116)
  br label %118

118:                                              ; preds = %108, %101
  %119 = load i8*, i8** %8, align 8
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %118, %86, %61, %35
  %121 = load i8*, i8** %5, align 8
  ret i8* %121
}

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i64 @EQUUID(i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

declare dso_local i32 @snprintf_uuid(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
