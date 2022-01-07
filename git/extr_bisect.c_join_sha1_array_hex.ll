; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_join_sha1_array_hex.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_join_sha1_array_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.oid_array = type { i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.oid_array*, i8)* @join_sha1_array_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @join_sha1_array_hex(%struct.oid_array* %0, i8 signext %1) #0 {
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  store %struct.oid_array* %0, %struct.oid_array** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %11 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %16 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @oid_to_hex(i64 %20)
  %22 = call i32 @strbuf_addstr(%struct.strbuf* %5, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %26 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i8, i8* %4, align 1
  %31 = call i32 @strbuf_addch(%struct.strbuf* %5, i8 signext %30)
  br label %32

32:                                               ; preds = %29, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %8

36:                                               ; preds = %8
  %37 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  ret i8* %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @oid_to_hex(i64) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
