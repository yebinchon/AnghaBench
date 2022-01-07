; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }
%struct.krb5_context = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@M_GSSAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_5__*)* @krb5_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_delete(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.krb5_context*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.krb5_context*
  store %struct.krb5_context* %7, %struct.krb5_context** %5, align 8
  %8 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %9 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %8, i32 0, i32 19
  %10 = call i32 @delete_address(i32* %9)
  %11 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %12 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %11, i32 0, i32 18
  %13 = call i32 @delete_address(i32* %12)
  %14 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %15 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %14, i32 0, i32 17
  %16 = call i32 @delete_keyblock(i32* %15)
  %17 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %18 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %17, i32 0, i32 16
  %19 = call i32 @delete_keyblock(i32* %18)
  %20 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %21 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %20, i32 0, i32 15
  %22 = call i32 @delete_keyblock(i32* %21)
  %23 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %24 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %23, i32 0, i32 14
  %25 = call i32 @delete_data(i32* %24)
  %26 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %27 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %26, i32 0, i32 13
  %28 = call i32 @delete_data(i32* %27)
  %29 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %30 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %29, i32 0, i32 12
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %36 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %35, i32 0, i32 12
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @M_GSSAPI, align 4
  %40 = call i32 @free(i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %51 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %49
  %55 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %56 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %55, i32 0, i32 11
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @krb5_free_key(i64 %57)
  %59 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %60 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %65 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @krb5_free_key(i64 %66)
  %68 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %69 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @krb5_free_key(i64 %70)
  br label %105

72:                                               ; preds = %54
  %73 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %74 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @krb5_free_key(i64 %75)
  %77 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %78 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @krb5_free_key(i64 %79)
  %81 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %82 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @krb5_free_key(i64 %83)
  %85 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %86 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @krb5_free_key(i64 %87)
  %89 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %90 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @krb5_free_key(i64 %91)
  %93 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %94 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @krb5_free_key(i64 %95)
  %97 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %98 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @krb5_free_key(i64 %99)
  %101 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %102 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @krb5_free_key(i64 %103)
  br label %105

105:                                              ; preds = %72, %63
  br label %106

106:                                              ; preds = %105, %49
  %107 = load %struct.krb5_context*, %struct.krb5_context** %5, align 8
  %108 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %107, i32 0, i32 0
  %109 = call i32 @mtx_destroy(i32* %108)
  ret void
}

declare dso_local i32 @delete_address(i32*) #1

declare dso_local i32 @delete_keyblock(i32*) #1

declare dso_local i32 @delete_data(i32*) #1

declare dso_local i32 @free(i64, i32) #1

declare dso_local i32 @krb5_free_key(i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
