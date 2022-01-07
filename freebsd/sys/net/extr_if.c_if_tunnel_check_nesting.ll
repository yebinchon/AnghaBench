; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_tunnel_check_nesting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_tunnel_check_nesting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: loop detected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: if_output recursively called too many times(%d)\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_tunnel_check_nesting(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_tag*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store %struct.m_tag* null, %struct.m_tag** %10, align 8
  br label %12

12:                                               ; preds = %31, %4
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %16 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %13, i32 %14, i32 0, %struct.m_tag* %15)
  store %struct.m_tag* %16, %struct.m_tag** %10, align 8
  %17 = icmp ne %struct.m_tag* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %20 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %19, i64 1
  %21 = bitcast %struct.m_tag* %20 to %struct.ifnet**
  %22 = load %struct.ifnet*, %struct.ifnet** %21, align 8
  %23 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %24 = icmp eq %struct.ifnet* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @LOG_NOTICE, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = call i32 @if_name(%struct.ifnet* %27)
  %29 = call i32 (i32, i8*, i32, ...) @log(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EIO, align 4
  store i32 %30, i32* %5, align 4
  br label %61

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32, i32* @LOG_NOTICE, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = call i32 @if_name(%struct.ifnet* %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i32, i8*, i32, ...) @log(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @EIO, align 4
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = call %struct.m_tag* @m_tag_alloc(i32 %46, i32 0, i32 8, i32 %47)
  store %struct.m_tag* %48, %struct.m_tag** %10, align 8
  %49 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %50 = icmp eq %struct.m_tag* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %5, align 4
  br label %61

53:                                               ; preds = %45
  %54 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %55 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %56 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %55, i64 1
  %57 = bitcast %struct.m_tag* %56 to %struct.ifnet**
  store %struct.ifnet* %54, %struct.ifnet** %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %60 = call i32 @m_tag_prepend(%struct.mbuf* %58, %struct.m_tag* %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %51, %38, %25
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, %struct.m_tag*) #1

declare dso_local i32 @log(i32, i8*, i32, ...) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
