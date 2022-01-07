; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddSeq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_db.c_AddSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.ack_data_record* }
%struct.TYPE_4__ = type { i32 }
%struct.ack_data_record = type { i32, i32, i8*, i8* }

@N_LINK_TCP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddSeq(%struct.alias_link* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ack_data_record, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.alias_link* %0, %struct.alias_link** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = add nsw i32 %18, %19
  %21 = shl i32 %20, 2
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ntohs(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @ntohl(i32 %27)
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i8* @htonl(i64 %31)
  %33 = getelementptr inbounds %struct.ack_data_record, %struct.ack_data_record* %13, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @ntohl(i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i8* @htonl(i64 %41)
  %43 = getelementptr inbounds %struct.ack_data_record, %struct.ack_data_record* %13, i32 0, i32 2
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds %struct.ack_data_record, %struct.ack_data_record* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ack_data_record, %struct.ack_data_record* %13, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %48 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  %54 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %55 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.ack_data_record*, %struct.ack_data_record** %58, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ack_data_record, %struct.ack_data_record* %59, i64 %61
  %63 = bitcast %struct.ack_data_record* %62 to i8*
  %64 = bitcast %struct.ack_data_record* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @N_LINK_TCP_DATA, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %6
  %71 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %72 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %85

77:                                               ; preds = %6
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %80 = getelementptr inbounds %struct.alias_link, %struct.alias_link* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 8
  br label %85

85:                                               ; preds = %77, %70
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @ntohl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
