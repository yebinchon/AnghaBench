; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_read_tuples.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_read_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_list = type { %struct.tuple_list* }
%struct.tuple = type { i32, i32 }

@tlist = common dso_local global %struct.tuple_list* null, align 8
@MDF_ATTR = common dso_local global i32 0, align 4
@CIS_LONGLINK_A = common dso_local global i32 0, align 4
@CIS_LONGLINK_C = common dso_local global i32 0, align 4
@CIS_NOLINK = common dso_local global i32 0, align 4
@CIS_LINKTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tuple_list* (i32)* @read_tuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tuple_list* @read_tuples(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tuple_list*, align 8
  %4 = alloca %struct.tuple_list*, align 8
  %5 = alloca %struct.tuple*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.tuple_list* null, %struct.tuple_list** %3, align 8
  store %struct.tuple_list* null, %struct.tuple_list** @tlist, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MDF_ATTR, align 4
  %10 = call i8* @read_one_tuplelist(i32 %8, i32 %9, i32 0)
  %11 = bitcast i8* %10 to %struct.tuple_list*
  store %struct.tuple_list* %11, %struct.tuple_list** @tlist, align 8
  store %struct.tuple_list* %11, %struct.tuple_list** %4, align 8
  br label %12

12:                                               ; preds = %60, %1
  %13 = load i32, i32* @MDF_ATTR, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %15 = load i32, i32* @CIS_LONGLINK_A, align 4
  %16 = call %struct.tuple* @find_tuple_in_list(%struct.tuple_list* %14, i32 %15)
  store %struct.tuple* %16, %struct.tuple** %5, align 8
  %17 = load %struct.tuple*, %struct.tuple** %5, align 8
  %18 = icmp eq %struct.tuple* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  %20 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %21 = load i32, i32* @CIS_LONGLINK_C, align 4
  %22 = call %struct.tuple* @find_tuple_in_list(%struct.tuple_list* %20, i32 %21)
  store %struct.tuple* %22, %struct.tuple** %5, align 8
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.tuple*, %struct.tuple** %5, align 8
  %25 = icmp eq %struct.tuple* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load %struct.tuple*, %struct.tuple** %5, align 8
  %28 = getelementptr inbounds %struct.tuple, %struct.tuple* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %23
  br label %63

32:                                               ; preds = %26
  %33 = load %struct.tuple*, %struct.tuple** %5, align 8
  %34 = getelementptr inbounds %struct.tuple, %struct.tuple* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @tpl32(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 32768
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @ck_linktarget(i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @read_one_tuplelist(i32 %50, i32 %51, i32 %52)
  %54 = bitcast i8* %53 to %struct.tuple_list*
  store %struct.tuple_list* %54, %struct.tuple_list** %3, align 8
  %55 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %56 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  %57 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %56, i32 0, i32 0
  store %struct.tuple_list* %55, %struct.tuple_list** %57, align 8
  %58 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  store %struct.tuple_list* %58, %struct.tuple_list** %4, align 8
  br label %59

59:                                               ; preds = %49, %43, %40, %32
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.tuple_list*, %struct.tuple_list** %3, align 8
  %62 = icmp ne %struct.tuple_list* %61, null
  br i1 %62, label %12, label %63

63:                                               ; preds = %60, %31
  %64 = load %struct.tuple_list*, %struct.tuple_list** @tlist, align 8
  %65 = load i32, i32* @CIS_NOLINK, align 4
  %66 = call %struct.tuple* @find_tuple_in_list(%struct.tuple_list* %64, i32 %65)
  %67 = icmp eq %struct.tuple* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.tuple_list*, %struct.tuple_list** @tlist, align 8
  %70 = load i32, i32* @CIS_LINKTARGET, align 4
  %71 = call %struct.tuple* @find_tuple_in_list(%struct.tuple_list* %69, i32 %70)
  %72 = icmp eq %struct.tuple* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i32, i32* %2, align 4
  %75 = call i64 @ck_linktarget(i32 %74, i32 0, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %2, align 4
  %79 = call i8* @read_one_tuplelist(i32 %78, i32 0, i32 0)
  %80 = bitcast i8* %79 to %struct.tuple_list*
  %81 = load %struct.tuple_list*, %struct.tuple_list** @tlist, align 8
  %82 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %81, i32 0, i32 0
  store %struct.tuple_list* %80, %struct.tuple_list** %82, align 8
  br label %83

83:                                               ; preds = %77, %73, %68, %63
  %84 = load %struct.tuple_list*, %struct.tuple_list** @tlist, align 8
  ret %struct.tuple_list* %84
}

declare dso_local i8* @read_one_tuplelist(i32, i32, i32) #1

declare dso_local %struct.tuple* @find_tuple_in_list(%struct.tuple_list*, i32) #1

declare dso_local i64 @tpl32(i32) #1

declare dso_local i64 @ck_linktarget(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
