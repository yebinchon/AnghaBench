; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_parse_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_uuid_alias = type { %struct.uuid*, i32 }
%struct.uuid = type { i32 }

@gpt_uuid_unused = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpt_uuid_alias_match = common dso_local global %struct.g_part_uuid_alias* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.uuid*)* @gpt_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpt_parse_type(i8* %0, %struct.uuid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uuid*, align 8
  %6 = alloca %struct.uuid, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.g_part_uuid_alias*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.uuid* %1, %struct.uuid** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 33
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i32 @parse_uuid(i8* %17, %struct.uuid* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %15
  %24 = call i64 @EQUUID(%struct.uuid* %6, i32* @gpt_uuid_unused)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %23
  %29 = load %struct.uuid*, %struct.uuid** %5, align 8
  %30 = bitcast %struct.uuid* %29 to i8*
  %31 = bitcast %struct.uuid* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %62

32:                                               ; preds = %2
  %33 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** @gpt_uuid_alias_match, align 8
  %34 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %33, i64 0
  store %struct.g_part_uuid_alias* %34, %struct.g_part_uuid_alias** %9, align 8
  br label %35

35:                                               ; preds = %57, %32
  %36 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %9, align 8
  %37 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %36, i32 0, i32 0
  %38 = load %struct.uuid*, %struct.uuid** %37, align 8
  %39 = icmp ne %struct.uuid* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %9, align 8
  %42 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @g_part_alias_name(i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strcasecmp(i8* %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load %struct.uuid*, %struct.uuid** %5, align 8
  %51 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %9, align 8
  %52 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %51, i32 0, i32 0
  %53 = load %struct.uuid*, %struct.uuid** %52, align 8
  %54 = bitcast %struct.uuid* %50 to i8*
  %55 = bitcast %struct.uuid* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %62

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.g_part_uuid_alias*, %struct.g_part_uuid_alias** %9, align 8
  %59 = getelementptr inbounds %struct.g_part_uuid_alias, %struct.g_part_uuid_alias* %58, i32 1
  store %struct.g_part_uuid_alias* %59, %struct.g_part_uuid_alias** %9, align 8
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %49, %28, %26, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @parse_uuid(i8*, %struct.uuid*) #1

declare dso_local i64 @EQUUID(%struct.uuid*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @g_part_alias_name(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
