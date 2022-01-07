; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_write_remote_refs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_write_remote_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref = type { i32, %struct.TYPE_2__*, %struct.ref* }
%struct.TYPE_2__ = type { i32 }
%struct.ref_transaction = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @write_remote_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_remote_refs(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref_transaction*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.ref* %0, %struct.ref** %2, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = call %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf* %5)
  store %struct.ref_transaction* %7, %struct.ref_transaction** %4, align 8
  %8 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %9 = icmp ne %struct.ref_transaction* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ref*, %struct.ref** %2, align 8
  store %struct.ref* %15, %struct.ref** %3, align 8
  br label %16

16:                                               ; preds = %41, %14
  %17 = load %struct.ref*, %struct.ref** %3, align 8
  %18 = icmp ne %struct.ref* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.ref*, %struct.ref** %3, align 8
  %21 = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %41

25:                                               ; preds = %19
  %26 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %27 = load %struct.ref*, %struct.ref** %3, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ref*, %struct.ref** %3, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 0
  %34 = call i64 @ref_transaction_create(%struct.ref_transaction* %26, i32 %31, i32* %33, i32 0, i32* null, %struct.strbuf* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.ref*, %struct.ref** %3, align 8
  %43 = getelementptr inbounds %struct.ref, %struct.ref* %42, i32 0, i32 2
  %44 = load %struct.ref*, %struct.ref** %43, align 8
  store %struct.ref* %44, %struct.ref** %3, align 8
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %47 = call i64 @initial_ref_transaction_commit(%struct.ref_transaction* %46, %struct.strbuf* %5)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = call i32 @strbuf_release(%struct.strbuf* %5)
  %55 = load %struct.ref_transaction*, %struct.ref_transaction** %4, align 8
  %56 = call i32 @ref_transaction_free(%struct.ref_transaction* %55)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ref_transaction* @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i64 @ref_transaction_create(%struct.ref_transaction*, i32, i32*, i32, i32*, %struct.strbuf*) #2

declare dso_local i64 @initial_ref_transaction_commit(%struct.ref_transaction*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(%struct.ref_transaction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
