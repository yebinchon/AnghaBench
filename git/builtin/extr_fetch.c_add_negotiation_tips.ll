; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_negotiation_tips.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_negotiation_tips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.git_transport_options = type { %struct.oid_array* }
%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@negotiation_tip = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s is not a valid object\00", align 1
@add_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Ignoring --negotiation-tip=%s because it does not match any refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.git_transport_options*)* @add_negotiation_tips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_negotiation_tips(%struct.git_transport_options* %0) #0 {
  %2 = alloca %struct.git_transport_options*, align 8
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  store %struct.git_transport_options* %0, %struct.git_transport_options** %2, align 8
  %8 = call %struct.oid_array* @xcalloc(i32 1, i32 4)
  store %struct.oid_array* %8, %struct.oid_array** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %50, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @negotiation_tip, i32 0, i32 0), align 8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @negotiation_tip, i32 0, i32 1), align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @has_glob_specials(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @get_oid(i8* %24, %struct.object_id* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %32 = call i32 @oid_array_append(%struct.oid_array* %31, %struct.object_id* %7)
  br label %50

33:                                               ; preds = %13
  %34 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %35 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @add_oid, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %40 = call i32 @for_each_glob_ref(i32 %37, i8* %38, %struct.oid_array* %39)
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %43 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %33
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %9

53:                                               ; preds = %9
  %54 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %55 = load %struct.git_transport_options*, %struct.git_transport_options** %2, align 8
  %56 = getelementptr inbounds %struct.git_transport_options, %struct.git_transport_options* %55, i32 0, i32 0
  store %struct.oid_array* %54, %struct.oid_array** %56, align 8
  ret void
}

declare dso_local %struct.oid_array* @xcalloc(i32, i32) #1

declare dso_local i32 @has_glob_specials(i8*) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

declare dso_local i32 @for_each_glob_ref(i32, i8*, %struct.oid_array*) #1

declare dso_local i32 @warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
