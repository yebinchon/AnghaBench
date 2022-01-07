; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_describe_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_describe_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.TYPE_2__ = type { i32 }
%struct.object = type { i32 }

@describe_object.bufs = internal global [4 x %struct.strbuf] [%struct.strbuf { i8* inttoptr (i64 128 to i8*) }, %struct.strbuf { i8* inttoptr (i64 128 to i8*) }, %struct.strbuf { i8* inttoptr (i64 128 to i8*) }, %struct.strbuf { i8* inttoptr (i64 128 to i8*) }], align 16
@describe_object.b = internal global i32 0, align 4
@name_objects = common dso_local global i64 0, align 8
@fsck_walk_options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object*)* @describe_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @describe_object(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load i64, i64* @name_objects, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fsck_walk_options, i32 0, i32 0), align 4
  %9 = load %struct.object*, %struct.object** %2, align 8
  %10 = call i8* @lookup_decoration(i32 %8, %struct.object* %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @describe_object.b, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* getelementptr inbounds ([4 x %struct.strbuf], [4 x %struct.strbuf]* @describe_object.bufs, i64 0, i64 0), i64 %13
  store %struct.strbuf* %14, %struct.strbuf** %3, align 8
  %15 = load i32, i32* @describe_object.b, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @ARRAY_SIZE(%struct.strbuf* getelementptr inbounds ([4 x %struct.strbuf], [4 x %struct.strbuf]* @describe_object.bufs, i64 0, i64 0))
  %18 = srem i32 %16, %17
  store i32 %18, i32* @describe_object.b, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %20 = call i32 @strbuf_reset(%struct.strbuf* %19)
  %21 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %22 = load %struct.object*, %struct.object** %2, align 8
  %23 = getelementptr inbounds %struct.object, %struct.object* %22, i32 0, i32 0
  %24 = call i32 @oid_to_hex(i32* %23)
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %21, i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %11
  %29 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strbuf_addf(%struct.strbuf* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %11
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  ret i8* %35
}

declare dso_local i8* @lookup_decoration(i32, %struct.object*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.strbuf*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
